#!/usr/bin/env bash

usage()
{
    echo "usage: $(basename $0)"
    echo ""
    echo "Naive wrapper around docker run"
    echo ""
    echo "Set container options from environment variables,"
    echo "pass command-line options directly to 'docker run' (except --help)."
    echo "Configure with a .env file or environment variables."
    echo ""
    echo "Options:"
    echo "  --help              This help text"
    echo ""
    echo "Environment file:"
    echo "  ENV_FILE            Path to environment file for this script"
    echo ""
    echo "Environment variables:"
    echo "  CONTAINER_NAME      Name of the container that will be created"
    echo "  SRC_PATH_HOST       Path to the source directory on the host machine"
    echo "  BUILD_PATH_HOST     Path to the build on the host machine"
    echo "  SRC_PATH_TARGET     Path to the source directory in the container"
    echo "  BUILD_PATH_TARGET   Path to the build directory in the container"
    echo "  USERID              UID used in the container (default: current host UID)"
    echo "  GROUPID             GID used in the container (default: current host GUI)"
}

# Parse command line options
args=()
while [[ $# -gt 0 ]]; do
    arg="$1"
    case $arg in
        --help)
            usage
            exit 0
            ;;
        *)
            args+=("$1")
            shift
            ;;
    esac
done
# Restore command line arguments
set -- ${args[@]}

if [[ -r "${ENV_FILE}" ]]; then
    echo "Reading env file: ${ENV_FILE}"
    source ${ENV_FILE}
else
    echo 'Not reading env file'
fi

# Read options from env file
container_name=${CONTAINER_NAME:?Must specify CONTAINER_NAME as an environment variable}
userid=${USERID:=$(id --user)}
groupid=${GROUPID:=$(id --group)}
src_path_host=${SRC_PATH_HOST:=?Must specify SRC_PATH_HOST as environment variable}
build_path_host=${BUILD_PATH_HOST:=?Must specify BUILD_PATH_HOST as environment variable}
src_path_target=${SRC_PATH_TARGET:=?Must specify SRC_PATH_TARGET as environment variable}
build_path_target=${BUILD_PATH_TARGET:=?Must specify BUILD_PATH_TARGET as environment variable}

command="docker run
    --rm --name ${container_name}
    --interactive --tty
    --user ${userid}:${groupid}
    --mount type=bind,src=${src_path_host},dst=${src_path_target}
    --mount type=bind,src=${build_path_host},dst=${build_path_target}
    --workdir ${build_path_target}
    $@"

echo "Running docker container '${container_name}'"
echo "Building in '$(basename ${build_path_host})'"
echo "docker run arguments: $@"
echo ""
echo ${command}
echo ""
${command}

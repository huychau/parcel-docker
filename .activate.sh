# Activate helper scripts
export PARCEL_DOCKER_HOME="$(pwd)"
export PARCEL_DOCKER_NAME="parcel-docker"
export PARCEL_PREFIX="parcel"


function _parcle-setup {
    docker build -t $PARCEL_DOCKER_NAME $PARCEL_DOCKER_HOME
}


function _parcle-run {
    docker run -v "${PARCEL_DOCKER_HOME}:/code" -p 1234:1234 $PARCEL_DOCKER_NAME $@
}


function _parcle-install {
    _parcle-run install $@
}


function _parcle-start {
    _parcle-run start
}


function _parcle-build {
    _parcle-run run-script build
}


# Alias for methods
alias "${PARCEL_PREFIX}-setup"="_parcle-setup"
alias "${PARCEL_PREFIX}-run"="_parcle-run"
alias "${PARCEL_PREFIX}-start"="_parcle-start"
alias "${PARCEL_PREFIX}-build"="_parcle-build"

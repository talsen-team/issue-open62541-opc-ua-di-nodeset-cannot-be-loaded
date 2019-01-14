#!/bin/bash

function navigate_to_script_containing_directory() {
    cd "$( cd $( dirname "${0}" ); pwd )"
}

navigate_to_script_containing_directory

/bin/bash bash-open62541/generate-di-types.sh
/bin/bash bash-open62541/generate-di-namespace.sh
/bin/bash bash-open62541/build-and-publish-server-app.sh
/bin/bash bash-open62541/start-server-app.sh

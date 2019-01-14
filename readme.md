# Issue when building and loading DI model (open62541 v0.3.0)

How to reproduce the error:

1. install relevant dependencies  
   sudo /bin/bash install-dependencies.sh
2. build and run example application  
   /bin/bash build-and-run.sh

The application exits with an error when loading the DI model ([src/main.c](src/main.c) line 22).

Following the instructions in the [open62541 documentation v0.3.0](https://open62541.org/doc/0.3/nodeset_compiler.html#combination-of-multiple-nodesets) the compiled nodeset fails to load.

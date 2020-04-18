#! /bin/bash
# Set all Pins' Three-state to false
sed -i "/<comp.*name=\"Pin\">\$/a\      <a name=\"tristate\" val=\"false\"/>" $1
#! /bin/bash
# Set all Three-state to false
sed -i "s/<a name=\"tristate\" val=\"true\"/>/<a name=\"tristate\" val=\"false\"/>" $1
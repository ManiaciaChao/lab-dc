#! /bin/bash
dir=$(dirname "$1")
src=$(basename "$1")
file="compat_"$src

cd $dir
cp $src $file

# Set all Pins' Three-state to false
sed -i "/<comp.*name=\"Pin\">\$/a\      <a name=\"tristate\" val=\"false\"/>" $file
# Remove unresolved logism-evolution libraries
perl -i -0pe "s/<lib.+desc=\"\#TCL\"[\w\W]+?<\/lib>//" $file
perl -i -0pe "s/<lib.+desc=\"\#Soc\"[\w\W]+?<\/lib>//" $file
sed -i '/<lib.*desc=\"#BFH-Praktika\".*/d' $file
sed -i '/<lib.*desc=\"#Input\/Output-Extra\".*/d' $file

echo `pwd`$file
#! /bin/bash
# Remove unresolved logism-evolution libraries
perl -i -0pe "s/<lib.+desc=\"\#TCL\"[\w\W]+?<\/lib>//" $1
perl -i -0pe "s/<lib.+desc=\"\#Soc\"[\w\W]+?<\/lib>//" $1
sed -i '/<lib.*desc=\"#BFH-Praktika\".*/d' $1
sed -i '/<lib.*desc=\"#Input\/Output-Extra\".*/d' $1

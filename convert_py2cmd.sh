#!/bin/bash
echo "--------------------------------------------------------"
echo "Transform $1 to linux command '$2'!!"
targetfile=$1
echo "targetfile: $targetfile"
outputfile=$2
echo "outputfile: $outputfile"
targetpath="$( cd "$( dirname "$0" )" && pwd )"
cp $targetpath/$1 $targetpath/$2
#add #!/usr/bin/python at the beginning of the command file
sed -i '1 i\#!/usr/bin/python' $targetpath/$outputfile
#convert file to UNIX format
dos2unix $targetpath/$outputfile
#add the "execute" access premissions to the file
chmod +x $targetpath/$outputfile
#remove the file if exist
rm -rf ~/bin/$outputfile
#create soft link of the targetfile
ln -s $targetpath/$outputfile ~/bin/
#add the command to the enviroment
export PATH=$targetpath:$PATH
echo "Command '$2' created!"
echo "--------------------------------------------------------"
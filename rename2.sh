## Renames a file to file.name, Where name is the current user login name

name=$1
set `who am i`
mv $name $name.$1


# Chmod to allow this file to be run.
# Edit this file every time you add a new page in src/
# ./builder.sh

cat build_files.txt | while read line 
do
   pandoc --standalone src/$line.md -o $line.html
done

# Chmod to allow this file to be run.
# Edit this file every time you add a new page in src/
# ./builder.sh

files="index newhome"
for file in $files; do
    pandoc --standalone src/$file.md -o $file.html
done

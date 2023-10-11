# Use this if you are extremely lazy.

cat build_files.txt | while read line 
do
   pandoc --standalone src/$line.md -o $line.html
done

# for file in src/*; do
#     pandoc --standalone src/$file.md -o $file.html
# done

git add -A

if [ $# -eq 0 ];
then
    git commit -m 'Small Updates'
else
    git commit -m $1
fi

git push origin main
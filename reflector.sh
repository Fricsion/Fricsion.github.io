# Use this if you are extremely lazy.

cat build_files.txt | while read line 
do
   pandoc --standalone src/$line.md -o $line.html
done


git add -A

if [$1];
then
    git commit -m $1
else
    git commit -m 'Small Updates'
fi

git push origin main
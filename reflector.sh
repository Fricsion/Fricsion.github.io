# Use this if you are extremely lazy.

files="index newhome sk index_en"
for file in $files; do
    pandoc --standalone src/$file.md -o $file.html
done

git add -A

if [$1];
then
    git commit -m $1
else
    git commit -m 'a small update'
fi

git push origin main
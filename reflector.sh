# Use this if you are extremely lazy.

files="index newhome sk index_en"
for file in $files; do
    pandoc --standalone src/$file.md -o $file.html
done

git add -A
git commit -m 'a small update'
git push origin main
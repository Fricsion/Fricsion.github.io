files="index newhome sk"
for file in $files; do
    pandoc --standalone src/$file.md -o $file.html
done

git add -A
git commit -m 'a few update'
git push origin main
# Use this if you are extremely lazy.



for file in src/*; do
    pandoc --standalone src/$file.md -o $file.html
done

git add -A

if [$1];
then
    git commit -m $1
else
    git commit -m 'Small Updates'
fi

git push origin main
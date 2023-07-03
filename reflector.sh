# Use this if you are extremely lazy.




cat peptides.txt | while read line 
do
   pandoc --standalone src/$line.md -o $line.html
done


git add -A
git commit -m 'Small updates'
git push origin main
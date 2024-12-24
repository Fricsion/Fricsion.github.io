
directories=$(ls -d src/*/ | xargs -n 1 basename)

mkdir pages
for d in $directories; do
	
	mkdir pages/$d

	echo "---\ntitle: $d\nheader-includes:\n- \usepackage[whole]{bxcjkjatype}\n	<meta charset="utf-8"/>\n	<title>$d</title>\n---\n" > src/$d.md
	
	files=$(ls "src/$d")
	
	for f in $files; do

		base_name=$(basename "$f" .md)
	   	pandoc --standalone --template=my-template.html src/$d/$f -o pages/$d/$base_name.html

		echo "* [$base_name]($d/$base_name.html)\n" >> src/$d.md

	done
done


md_files=$(ls src/*.md | xargs -n 1 basename)
for f in $md_files; do
	base_name=$(basename "$f" .md)

  # Convert the Markdown file to HTML and save it with the same name
	
	pandoc --standalone --template=my-template.html "src/$f" -o "pages/$base_name.html"
done

mv pages/index.html index.html

git add -A

if [ $# -eq 0 ];
then
    git commit -m 'Small Updates'
else
    git commit -m $1
fi

git push origin main


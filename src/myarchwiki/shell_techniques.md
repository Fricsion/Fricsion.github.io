---
title: Shell Technique
header-includes:
- \usepackage[whole]{bxcjkjatype}
	<meta charset="utf-8"/>
	<title>Shell Technique</title>

---

# Shell techniques

# Counting up to n
```sh
for i in {1..600}
do
	echo $i
done
```


# Combining videos into 1
use something like this
```sh
for i in {1..660}
 do
   echo "file seg-$i-f3-v1-a1.ts" >> mylist.txt
 done
```

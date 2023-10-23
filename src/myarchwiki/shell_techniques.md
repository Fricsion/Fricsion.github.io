# Shell techuniques

# Counting up to n
```
for i in {1..600}
do
	echo $i
done
```

# Combining videos into 1
use something like this
```
for i in {1..660}
 do
   echo "file seg-$i-f3-v1-a1.ts" >> mylist.txt
 done
```

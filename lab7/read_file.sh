echo "Type in the file name or path"
read path

while IFS= read -r line 
do
	echo "$line"
	sleep 0.05
done < "$path"

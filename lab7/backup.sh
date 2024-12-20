echo "Insert the path to the folder to backup"
read path
echo "Insert the path to the target folder"
read path_target

cur_date=$(date +%Y-%M-%d)
if [ -d "$path" ] && [ -d "$path_target" ] 
then 
	 for file in "$path"/*; do
	 	if [ -f "$file" ]; then
	 		base_name=$(basename "$file")
	 		
	 		cp "$file" "$path_target/${base_name%.*}_$cur_date.${base_name##*.}"
	 	fi
	 done
else
	echo "Something is wrong"
fi


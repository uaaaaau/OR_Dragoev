echo "Type in the word you want to delete"
read del_word
echo "Type in the word you want to insert"
read ins_word
echo "Type in the name or path of the target file"
read path

if [[ $(basename "$path") == *.txt ]] 
then
	sed -i "s/$del_word/$ins_word/g" "$path"
fi

echo "Replacement complete"

echo "input a number"
read number

until [ "$number" -le 0 ]; do
	echo "$number"
	((number--))
done


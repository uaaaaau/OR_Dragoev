echo "enter a number";
read input_number

if ((input_number > 0))
	then echo "positive number"
elif ((input_number < 0))
	then echo "negative number"
else
	echo "number is 0"
fi

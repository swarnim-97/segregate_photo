for file in segregate_photos/*.jpg; do
	name=${file##*/}
	#echo $name
	year=$(echo $name | cut -d '-' -f 1)
	#echo $year
	month=$(echo $name | cut -d '-' -f 2)
	#echo "$month"
	if [ ! -d "$year/$month" ]; then
		mkdir -p $year/$month
		mv segregate_photos/$name $year/$month/$name
	else 
		mv segregate_photos/$name $year/$month/$name
	fi
done

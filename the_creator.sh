#!/bin/bash
#Check if the directory already exists
students_dir="students_directory"
if [ ! -d "$students_dir" ]; then
	echo "Creating $students_dir"
	mkdir "$students_dir"
else
	echo "Directory already exists"
fi
#Automatically create the files
auto=("cohort1.txt" "cohort2.txt" "cohort3.txt")
for auto in "${auto[@]}"; do
	file_path="$students_dir/$auto"
if [ ! -f "$file_path" ]; then
	touch "$file_path"
else
	echo "$file_path already exists"
fi
done

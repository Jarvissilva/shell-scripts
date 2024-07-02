mkdir folder1
cd folder1
touch attendance.txt marks.txt time-table.txt annexure.txt agenda.txt

echo "Listing all files from folder 1"
ls

cd ../
mkdir folder2

cd folder1

for file in *; do
  echo "se" >> "$file" 

  mv "$file" ../folder2
  echo "Moved"
done

cd ../folder2

for file in *; do
  mv "$file" "anew_$file"
	
done

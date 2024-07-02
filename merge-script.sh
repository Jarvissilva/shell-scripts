cd folder2
ls 

count=0

for file in "./"a*.txt; do
  cat "$file" >> "./temp_merged.txt"
  count=$((count + 1))  
done

mv "./temp_merged.txt" "./merge_files_a_($count)"

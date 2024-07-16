number_words=("zero" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine" 
              "ten" "eleven" "twelve" "thirteen" "fourteen" "fifteen" "sixteen" 
              "seventeen" "eighteen" "nineteen" "twenty" "thirty" "forty" "fifty" 
              "sixty" "seventy" "eighty" "ninety" "hundred" "thousand")

while read -r word; do
    if [[ "$word" =~ ^[a-zA-Z]+$ ]]; then
	if [[ " ${number_words[*]} " =~ " $word " ]]; then
            echo "$word(Number)" >> output.txt
	elif [[ "$word" =~ ^[IVXLCDMivxlcdm]+$ ]]; then
            echo "$word(Roman Numeral)" >> output.txt
        else
            echo "$word(Word)" >> output.txt; 
        fi
    elif [[ "$word" =~ ^[0-9]+$ ]]; then
        echo "$word(Number)" >> output.txt
    elif [[ "$word" =~ ^[०-९]+$ ]]; then
        echo "$word(Number (Devanagari))" >> output.txt
    elif [[ "$word" =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ || "$word" =~ ^[0-9]{2}/[0-9]{2}/[0-9]{4}$ ]]; then
        echo "$word(Date)" >> output.txt
    elif [[ "$word" =~ ^[अ-जडण-शष-ह़ऽ-ॅॉ़ऽं-ऽॐ-ॡ]+$ ]]; then
        echo "$word(Devanagari)" >> output.txt
    elif [[ "$word" =~ ^[^[:alnum:]]+$ ]]; then
        echo "$word(Special Symbol)" >> output.txt
    else
        echo "$word(Couldn't Recognize)" >> output.txt
    fi
done < <(tr ' ' '\n' < data.txt)

 

#!/bin/bash

 

echo "Taking Backup before modifiying the file."

 

mkdir /home/anbarasan/labtest/bkpfiles/

cp -r /home/anbarasan/01_word_replace.txt /home/anbarasan/labtest/bkpfiles/

echo "Backup Completed and copyed to /home/anbarasan/backup/notepad.txt"

sleep 2

echo "Executing the word replacement...."

sleep 3

 

sed -i '5,${/welcome/s/give/learning/g}' /home/anbarasan/01_word_replace.txt

 

echo "File Replacment Completed"

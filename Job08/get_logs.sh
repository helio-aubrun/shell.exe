file=number_connection-$(date +"%d-%m-%Y-%H:%M")
echo $(last | grep helio | wc  -l) > $file
file.tar="$file"
tar -cvf "/home/helio/Documents/shell.exe/job8/$file.tar" "$file"
mv "/home/helio/Documents/shell.exe/job8/$file.tar" backup
rm "$file"

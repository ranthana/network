
read -p "Enter file name: " filename

if [ -f "$filename" ]
then
  wc -l -w "$filename"
else
  echo "file not found"
fi

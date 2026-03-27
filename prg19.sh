
read -p "enter the first file:" file1
read -p "enter the second  file:" file2
if cmp -s "$file1" "$file2";then
echo "the files are identical.Deleting $file2..."
rm "$file2"
else
echo "the files are different"
fi

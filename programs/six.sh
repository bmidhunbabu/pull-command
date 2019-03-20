echo "enter your directory name:"
read name
mkdir $name
cd $name
touch "f1"
touch "f2"
touch "f3"
echo "file 1">>f1
echo "file 2">>f2
echo "file 3">>f3
echo "first three columns of f1:"
cut -b 1-3 f1
echo "content of file 1">>f3
cat f1>>f3
echo "content of file 2">>f3
cat f2>>f3
echo "contents of f3:"
cat f3
echo "search for a string:"
read str
infile=$(cat f3 | grep -c $str)
if [ $infile -eq 0 ]; then
  echo "string is not present"
else
  echo "string is present"
  grep $str f3
fi

echo "Enter the directory name"
read di
if [ -d $di ]
then
cd $di
n=`find . -type d -empty | wc -l`
echo "No. of empty subfolders: "$n
if [ $n -gt 0 ]
then
find . -type d -empty -delete
echo "subfolders deleted: "$n
else
echo "No empty subfolders" 
fi
else
echo "No such folder exist"
fi

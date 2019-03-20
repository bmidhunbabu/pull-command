echo "Enter your name : "
read name
echo $name
echo "Current Directory : "  $PWD
mkdir $name
cd $name
echo "Current Directory : "
echo $PWD
echo "Name for file : "
read file
touch $file
echo $name >> $file
echo "Enter your Address"
read address
echo $address >> $file
echo "contents of " $file
cat $file
cd ..
tar -cvf $name.tar $name

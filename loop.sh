clear #wipe the console window so we start with a clean slate
printf '%.s#' {1..30}
echo -e "\n******************************"
echo "##############################"

# set up my validation functions
checkAlpha() {
while [ -z $userName ]; # -z checks for length=0
  do
    echo "Please enter your name"
    read userName
done
}

checkInteger(){
while ! [ "$endNum" -eq "$endNum" ] 2>/dev/null; #suppress bash error
  do
  echo "Please enter a positive number only"
  read endNum
done
}

checkGreater() {
while [ $endNum -lt 3 ];
  do
  echo "Please enter something greater than $endNum"
  read endNum
done
}

echo "  Awesome Counting Program"
echo "Please tell me your name: "
read userName

checkAlpha $userName

echo "Welcome $userName, this is going to be fun."

echo "###### Count by 2 ########"
echo "What's the max number?"
read endNum


checkInteger $endNum
checkGreater $endNum

if [ $endNum -le 4 ]; then
  echo "Dude, that's going to be pathetic; try a bigger number."
elif [ $endNum -gt 101 ]; then
  echo "Do you want to be here all day?  I'm going to stop at 100"
  endNum=100
fi

echo "Counting to $endNum, odd numbers only - press Enter to start:"
read wait
for ((x=1;x<=$endNum;x++)); do echo $x;x=$x+1; done
echo "Boom!"


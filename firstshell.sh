
function File {
echo "this is my function"
}

BIRTHDATE="Jan 1, 2000"
PRESENT=10
BIRTHDAY=`date -d "$BIRTHDATE" +%A`
#check if birthdate is jan
if [ "$BIRTHDATE" == "Jan 1,2000" ] ; then
	echo "Bithdate is correct"
else
	echo "Birthdate is not correct"
fi

if [ "$PRESENT" == 10 ] ; then
	echo "present is correct"
else
	echo "present is not correct."
fi

echo "$BIRTHDAY"
echo $#
echo $@
echo $1
if [ $# -lt 1 ]; then
	echo "number of arguments is invalid"
else
	echo "correct number of arguments"
fi

File

##arrays

my_array=(apple banana anotherthing thing "fuit" 2)
echo "array contains ${#my_array}"

##arithmetic expressions

echo "the sum of 100 and 65 is $(( 100 +65))"

##string functions
string="my name is mohammed"
pos=1
len=6
echo ${string:pos:len}

#logical combinations
myfirstname=mohammed
mylastname=zaiter
age=18
if [[ $myfirstname == "mohammed" && $mylastname == "zaiter" && $age -eq 18 ]] ;  then
	echo "result succeeded"
else
	echo "error in your result"
fi

mycase=exeptional
#switch case
case $mycase in
	exeptional) echo "yes its exceptional";;
	notexceptional) echo "its not exceptional";;
esac


##for loop

for item in ${my_array[@]}
do
	echo $item
done

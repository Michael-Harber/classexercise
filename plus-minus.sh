# Finding lines that start with + or -
# cat plus-minus.txt | egrep ^[+\-]
# echo $?

# additional test for pattern.txt
# cat pattern.txt | egrep [+\-]
# echo $?


# negative test for pattern.txt
# cat pattern.txt | egrep +



PATTERN=^[+\-]



failure=0
egrep "$PATTERN" should-match-plusminus.txt
echo $?
failure=1

failure=0
if egrep -v "$PATTERN" should-match-plusminus.txt
then
echo "failure"
failure=1
else
echo "success on should match"
fi
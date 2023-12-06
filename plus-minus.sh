# Finding lines that start with + or -
# cat plus-minus.txt | egrep ^[+\-]
# echo $?

# additional test for pattern.txt
# cat pattern.txt | egrep [+\-]
# echo $?


# negative test for pattern.txt
# cat pattern.txt | egrep +



PATTERN=^[+\-]

echo; echo "This is what I found"
egrep "$PATTERN" should-match-plusminus.txt



failure=0
if egrep -v "$PATTERN" should-match-plusminus.txt
then
echo "failure"
failure=1
else
echo "success on should-match"
fi

echo $?

exit $failure


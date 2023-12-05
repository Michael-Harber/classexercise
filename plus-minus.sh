# Finding lines that start with + or -
cat pattern.txt | egrep ^[+\-]
echo $?

# additional test for pattern.txt
# cat pattern.txt | egrep [+\-]
# echo $?


# negative test for pattern.txt
# cat pattern.txt | egrep +




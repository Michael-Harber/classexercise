# lines that have a tag or ref associated
cat git-log.txt | egrep commit.*tag
echo $?

# additional test for git-log.txt
# cat git-log.txt | egrep ^[Date]
# echo $?

# negative test for git-log.txt
# cat git-log.txt | egrep [Date]

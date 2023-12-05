# lines that have a tag or ref associated
# cat git-log.txt | egrep commit.*tag
# echo $?

# additional test for git-log.txt
# cat git-log.txt | egrep ^[Date]
# echo $?

# negative test for git-log.txt
# cat git-log.txt | egrep [Date]


PATTERN=commit.*tag




egrep "$PATTERN" should-match-git.txt



failure=0
if egrep -v "$PATTERN" should-match-git.txt
then
echo "failure"
failure=1
else
echo "success on should match"
fi

echo $?

exit $failure
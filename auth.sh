# new ssh sessions
# cat auth.log | egrep sshd.*opened
# echo $?

# additional test for auth.log
# cat auth.log | egrep sshd.*closed
# echo $?


PATTERN=sshd.*opened




egrep "$PATTERN" should-match-auth.txt



failure=0
if egrep -v "$PATTERN" should-match-auth.txt
then
echo "failure"
failure=1
else
echo "success on should match"
fi

echo $?

exit $failure


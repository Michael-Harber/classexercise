# new ssh sessions
cat auth.log | egrep sshd.*opened
echo $?

# additional test for auth.log
# cat auth.log | egrep sshd.*closed
# echo $?
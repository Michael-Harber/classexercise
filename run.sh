# Finding lines that start with + or -
cat pattern.txt | egrep ^[+\-]
echo $?

# additional test for pattern.txt
cat pattern.txt | egrep [+\-]
echo $?

# lines that have a tag or ref associated
cat git-log.txt | egrep commit
echo $?

# additional test for git-log.txt
cat git-log.txt | egrep ^[Date]
echo $?

# new ssh sessions
cat auth.log | egrep sshd.*opened
echo $?

# additional test for auth.log
cat auth.log | egrep sshd.*closed
echo $?



# negative test for git-log.txt
cat git-log.txt | egrep ^[Date]


# negative test for pattern.txt
cat pattern.txt | egrep +




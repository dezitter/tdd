# Stash unstaged changes
git stash -q --keep-index

rake test
TEST_RESULT=$?

# Unstash unstaged changes
git stash pop -q

exit $TEST_RESULT

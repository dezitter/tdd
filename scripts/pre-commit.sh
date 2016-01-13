# Stash unstaged/untracked changes
git stash -q --keep-index --include-untracked

rake test
TEST_RESULT=$?

# Unstash unstaged changes
git stash pop -q

exit $TEST_RESULT

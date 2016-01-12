# Test-Driven Development By Example (In Ruby)

Ruby implementation of the examples found in [Test-Driven Development By Example](http://amzn.com/0321146530)

# Install

    $ git clone https://github.com/dezitter/tdd
    $ cd tdd/
    $ bundle install

You can then run all tests by executing the *test* rake task:

    $ rake test

# Development

I used a pre-commit hook to ensure that all tests pass *before* committing any
changes.

    $ cd .git/hooks
    $ ln -s ../../scripts/pre-commit.sh pre-commit

Tweet storm generator
====

![CircleCI](https://circleci.com/gh/mateuscruz/tweetstormgenerator.svg?style=svg)
[![Maintainability](https://api.codeclimate.com/v1/badges/3a5a2c1b4813a70f6827/maintainability)](https://codeclimate.com/github/mateuscruz/tweetstormgenerator/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/3a5a2c1b4813a70f6827/test_coverage)](https://codeclimate.com/github/mateuscruz/tweetstormgenerator/test_coverage)

Dependencies
------------

- Ruby 2.6.5

Usage
-----

`./tweetstormgenerator <text>`

Sample output
-------------

```bash
export TWEET=$(cat <<TEXT
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam facilisis nulla in tortor sollicitudin dignissim. Ut dignissim est vitae erat ultrices commodo. Nullam finibus augue eget eros eleifend, tincidunt varius lorem pellentesque. Sed mollis malesuada justo vitae congue. Maecenas blandit mollis libero nec vehicula. Phasellus vitae dui nec dolor tempus faucibus. Morbi bibendum eu nunc a finibus. Nunc ultricies auctor ipsum, vel bibendum magna vulputate vitae. Duis lobortis enim a ipsum egestas aliquam. Donec vehicula varius auctor. Nam luctus non justo sed viverra. Nullam sed vehicula turpis. Praesent congue, lectus non facilisis bibendum, mi ex porta nunc, sed auctor turpis mauris non diam.

Sed lobortis, dolor nec fringilla ultrices, lacus ex ornare est, non pellentesque leo diam at est. Praesent et eleifend est.
TEXT
)

> ./tweetstormgenerator $TWEET
| Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam facilisis nulla in tortor sollicitudin dignissim. Ut dignissim est vitae 1/7
|
|
| erat ultrices commodo. Nullam finibus augue eget eros eleifend, tincidunt varius lorem pellentesque. Sed mollis malesuada justo vitae 2/7
|
|
| congue. Maecenas blandit mollis libero nec vehicula. Phasellus vitae dui nec dolor tempus faucibus. Morbi bibendum eu nunc a finibus. 3/7
|
|
| Nunc ultricies auctor ipsum, vel bibendum magna vulputate vitae. Duis lobortis enim a ipsum egestas aliquam. Donec vehicula varius 4/7
|
|
| auctor. Nam luctus non justo sed viverra. Nullam sed vehicula turpis. Praesent congue, lectus non facilisis bibendum, mi ex porta nunc, 5/7
|
|
| sed auctor turpis mauris non diam. Sed lobortis, dolor nec fringilla ultrices, lacus ex ornare est, non pellentesque leo diam at est. 6/7
|
|
| Praesent et eleifend est. 7/7
```

Running tests
-------------

```bash
bundle install
bundle exec rspec
```

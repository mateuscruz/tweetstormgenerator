Tweet storm generator
====

![CircleCI](https://circleci.com/gh/mateuscruz/tweetstormgenerator.svg?style=svg)

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
| Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam facilisis nulla in tortor sollicitudin dignissim. Ut dignissim est vitae  1/7
|
|
| erat ultrices commodo. Nullam finibus augue eget eros eleifend, tincidunt varius lorem pellentesque. Sed mollis malesuada justo vitae co 2/7
|
|
| ngue. Maecenas blandit mollis libero nec vehicula. Phasellus vitae dui nec dolor tempus faucibus. Morbi bibendum eu nunc a finibus. Nunc 3/7
|
|
|  ultricies auctor ipsum, vel bibendum magna vulputate vitae. Duis lobortis enim a ipsum egestas aliquam. Donec vehicula varius auctor. N 4/7
|
|
| am luctus non justo sed viverra. Nullam sed vehicula turpis. Praesent congue, lectus non facilisis bibendum, mi ex porta nunc, sed aucto 5/7
|
|
| r turpis mauris non diam.

|

| Sed lobortis, dolor nec fringilla ultrices, lacus ex ornare est, non pellentesque leo diam at est. Praesent e 6/7
|
|
| t eleifend est. 7/7
```

Running tests
-------------

```bash
bundle install
bundle exec rspec
```

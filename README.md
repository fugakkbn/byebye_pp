# ByebyePp

ByeByePp is gem for debug.

Are you writing code like the following for debug? If so, this gem will help.

```ruby
a = 'This is A.'
b = 10
c = %w[one two three]

pp '=' * 40
pp a.class
pp a.inspect

pp '=' * 40
pp b.class
pp b.inspect

.
.
```

## Installation

Install the `byebye_pp` gem. `$ gem install byebye_pp` from the command line, or add a line in your Gemfile.

```sh
$ gem byebye_pp
```

## Usage

All that remains is to pass the debugging target to the `bbpp` method.

```ruby
require 'byebye_pp'

a = 'This is A.'
b = 10
c = %w[one two three]

bbpp a
bbpp b
bbpp c
```

The following output is obtained by `#bbpp`.

```sh
========================================
class: String
inspect: "This is A."
========================================
class: Integer
inspect: 10
========================================
class: Array
inspect: ["one", "two", "three"]
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/fugakkbn/byebye_pp.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

# Bundler::Verbose

Simple plugin for Bundler to generate verbose Gemfile with description of each gem. It may be useful for novice Ruby developers or when you start diving into new Ruby project.

## Installation and usage

Install gem:

    $ gem install bundler-verbose

Alternately, add it to Gemfile:

```ruby
gem 'bundler-verbose'
```

And then execute command in your project directory:

    $ bundle verbose

The generated Gemfile.verbose you can add to your VCS and check it out when you forget what some of your gems is doing.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/bundler-verbose. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


# Bundler::Verbose

Simple plugin for Bundler to generate verbose Gemfile with description of each gem. It may be useful for novice Ruby developers and if you only start diving into new Ruby project.

![Bundler::Verbose Demo](https://cloud.githubusercontent.com/assets/3993468/11920609/87c287ce-a785-11e5-8082-25cdbfde0837.png)

## Installation and usage

Install gem:

    $ gem install bundler-verbose

Alternately, add it to Gemfile:

```ruby
gem 'bundler-verbose'
```

And then execute command in your project directory:

    $ bundle verbose

You can add the generated Gemfile.verbose to your VCS and come back to it when you forget what some of your gems is doing.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bikolya/bundler-verbose. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).


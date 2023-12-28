# Ruby::Lsp::Rubyfmt

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruby-lsp-rubyfmt'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby-lsp-rubyfmt

## Dependency

To use this Ruby LSP Addon, you need to have [`rubyfmt`](https://github.com/fables-tales/rubyfmt) installed as it's an external dependency.

This addon calls the `rubyfmt` executable in `addon.rb`

If you already have homebrew installed, you can install `rubyfmt` by running the following

```
brew install rubyfmt
```

If you don't, go to https://brew.sh and install it on your machine.

Check if the installation was successfully by running the following
```
rubyfmt --version
```

If it was successful, you should see a version number printed.

## Usage

To use this addon, you need to modify the VS code setting `rubyLsp.formatter` in `settings.json`
```
"rubyLsp.formatter": "rubyfmt"
```

After that, open the VS code command pallete and select the option `Developer: Reload Window`.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/ruby-lsp-rubyfmt. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Ruby::Lsp::Rubyfmt project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/ruby-lsp-rubyfmt/blob/master/CODE_OF_CONDUCT.md).

# GiphyApi

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/giphy_api`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Install rvm, follow https://rvm.io/:

```ruby
$ gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
 ...
 gpg: key D39DC0E3: public key "Michal Papis (RVM signing) <mpapis@gmail.com>" imported
 ...
$ curl -sSL https://get.rvm.io | bash -s stable
 ...
 gpg: Good signature from "Michal Papis (RVM signing) <mpapis@gmail.com>" [unknown]
 ...
 GPG verified '$HOME/.rvm/archives/rvm-1.26.11.tgz'
 Installing RVM to $HOME/.rvm/
 ...
```

Use rvm:

```ruby
$ . ~/.rvm/scripts/rvm
$ git clone https://github.com/phelanm/giphy_api.git
$ cd  giphy_api
$ rvm --rvmrc --create ruby-2.1.5@giphy_api
$ cd ../giphy_api
 You are using '.rvmrc', it requires trusting, it is slower and it is not compatible with other ruby managers,
 ...
 y[es], n[o], v[iew], c[ancel]> y
$ gem install ruby
 ...
 1 gem installed
$ gem install bundler
 ...
 1 gem installed
$ bundle install
 ...
 Bundle complete! 6 Gemfile dependencies, 17 gems now installed.
 Use `bundle show [gemname]` to see where a bundled gem is installed.
```

Add this line to your application's Gemfile:

```ruby
gem 'giphy_api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install giphy_api

## Usage

```ruby
$ bin/console
 2.1.5 :001 > client = GiphyApi::Client.new
  => #<GiphyApi::Client:0x000000027c7d40 @connection=#<Faraday::Connection:0x000000027c7c00...
 2.1.5 :003 > response = client.trending
  => #<Faraday::Response:0x0000000115f5d0 @on_complete_callbacks=[], @env=#<Faraday::Env @method=:get @body="\n{\"data\":[{\"type\":\"gif\",\"id\":\"l41lQjn3MrKiEvrX2\",\"url\":\"http:\\/\\/giphy.com\\/gifs\\/mashable-l41lQjn3MrKiEvrX2\",...
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/giphy_api. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


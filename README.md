# Instaman

Instaman is a gem to increase interaction of your Instagram account and increase the number of followers. It visits the latest posts and likes. Follows the owner and unfollows the user after certain number of loops.You can help to develop a comment part and integrate to gem. Since I do not want anyone to be banned I did not include a random commenting part. I want it to be smart as possible. You can fork and develop project and contact me by using Instagram. My username is @hasannkursunn . I would love to interact with you. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'instaman'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install instaman

## Usage
You should have Chrome ınstalled on your computer before using Instaman. Also install chromedriver-helper gem for Chromedriver. 
Require Instaman:
```ruby
require 'instaman'
```

Create a new empty array:
```ruby
$follow=[""]
```

Then create a new object for Instaman:
```ruby
profile = Instaman::Bot.new("YOUR USERNAME GOES HERE" , "YOUR PASSWORD GOES HERE" , "YOUR HASHTAGS GOES HERE WİTH JUST COMMA", "THİS PART FOR COMMENTS BUT THE FEATURE IS NOT ACTIVE YET")
```

Then use methods:
```ruby
#For Entering account
profile.enter_account

#For running bot
profile.bot

#For running unfollow part
profile.unfollow

```

The gem was designed to wait enough time after each action. The best thing you can do is to add rescue command as mentioned below and run loop for bot:
```ruby
#Start loop
loop do
	profile.enter_account
	#Runs follow part for 16 times
    begin
        16.times do 
            profile.bot
        end
    rescue Watir::Exception::UnknownObjectException #in case it gives an error
        sleep(40)
    end

    #Runs unfollow part
    begin
        profile.unfollow
    rescue Watir::Exception::UnknownObjectException #in case it gives an error
        sleep(40)
    end
end

```

The bot can run days or weeks until you stop it with this way. Please help to improve it. Fork it and give it a star. I will be very appriciated if you contact me with my Instagram account @hasannkursunn . Find me and contact me and lets make something beautifull together.
## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hasannkursunn/instaman.

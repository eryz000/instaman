gem 'instaman'

$ bundle

$ bundle

$ gem install instaman

$ bundle

$ gem install instaman

require 'instaman'

$follow=[""]
profile = Instaman::Bot.new("YOUR USERNAME GOES HERE" , "YOUR PASSWORD GOES HERE" , "YOUR HASHTAGS GOES HERE WİTH JUST COMMA", "THİS PART FOR COMMENTS BUT THE FEATURE IS NOT ACTIVE YET")

#For Entering account

profile.enter_account

#For running bot

profile.bot

#For running unfollow part

profile.unfollow

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



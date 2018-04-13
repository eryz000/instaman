require "instaman/version"
require "watir"
module Instaman
class Bot
	    def initialize(username,password,hashtags,comments)
	        $username=username
	        $password=password
	        $hashtags_initial=hashtags
	        $comments_initial=comments
	    end
	    def enter_account

	        #Open a new chrome $browser
	        $browser = Watir::Browser.new :chrome, headless:true
	        $browser.goto "http://instagram.com/accounts/login/"

	        #Fill the form and click login button
	        $browser.text_field(:name, 'username').set "#{$username}"
	        sleep(2)
	        $browser.text_field(:name, 'username').set "#{$password}"
	        sleep(5)
	        if $browser.button(class: ['_qv64e' , '_gexxb' , '_4tgw8' , '_njrw0']).exists?
	            $browser.button(class: ['_qv64e' , '_gexxb' , '_4tgw8' , '_njrw0']).click
	        else
	            sleep(1)
	        end
	    end
	    def bot

	        $hashtags=$hashtags_initial.split(',')
	        $comments=$comments_initial.split(',')

	        $hashtags.each do |i|

	            #Open discover page for hashtag
	            $browser.goto "https://instagram.com/tags/#{i}"
	            puts "Discover page opened for" + " " + i

	            #Click newest 4 pictures on the page
	            $browser.div(:xpath, '//*[@id="react-root"]/section/main/article/div[2]').divs(:class, ['_mck9w', '_gvoze', '_tn0ps']).first(4).each do |divs|
	                divs.a.click
	                sleep(1)
	                if $browser.span(:class, ['_8scx2' , 'coreSpriteHeartOpen']).exists?
	                    $browser.span(:class, ['_8scx2' , 'coreSpriteHeartOpen']).click
	                else sleep(1)
	                end
	                sleep(2)
	                if $browser.button(:class, ['_qv64e' , '_iokts' , '_4tgw8' , '_njrw0']).exists?
	                    $browser.button(:class, ['_qv64e' , '_iokts' , '_4tgw8' , '_njrw0']).click
	                        
	                    #Take username
	                    user_name=$browser.link(:class, ['_2g7d5' , 'notranslate' , '_iadoq']).text
	                        
	                        #Add to array
	                        $follow << user_name

	                        #Type to comand line
	                        puts user_name + " followed at "
	                    else sleep(2)
	                end
	                sleep(rand(50..70))
	                $browser.back
	            end

	        end
	    end
	    def unfollow
	        $follow.each do |f|
	            $browser.goto "http://instagram.com/#{f}"
	            sleep(2)
	            if $browser.button(:class, ['_qv64e', '_t78yp' , '_r9b8f' , '_njrw0']).exists?
	                $browser.button(:class, ['_qv64e', '_t78yp' , '_r9b8f' , '_njrw0']).click
	                
	                #Type unfollowed people
	                puts "You unfollowed " + f

	                #Wait random time
	                sleep(rand(50..70))
	                $browser.back
	            else 
	                sleep(2)
	            end
	        end
	        $follow.clear
	    end
	end
end


class FortunesController < ApplicationController
  
  def horoscopes
    all_zodiacs = Zodiac.list
    user_sign = params.fetch("the_sign").to_sym
    @this_zodiac = all_zodiacs.fetch(user_sign)
    @horoscope = @this_zodiac.fetch(:horoscope)
    @user_zodiac = @this_zodiac.fetch(:name)
     
     @array_of_numbers = Array.new
 
     5.times do
       another_number = rand(1...100)
       
       @array_of_numbers.push(another_number)
     end
 
     render({ :template => "general/general_template.html.erb" })
   end

end

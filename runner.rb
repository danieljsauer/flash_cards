require './lib/turn'
require './lib/card'
require './lib/deck'

#Should I check both the true/false in spec? Or should I just do that in pry?
#Surely adding a new 'require' to the top of each new respec_class is uncessarry? 
#Need more clarification how to organize everything to optimize require, runner, and rspec. 

#Ok making some sense. I need require card within turn spec, since it interacts with card objects. 

#Don't need attr_accessor for cards because we aren't change the instance variable data? 
#Yeah, right now we are only accessing "cards" within deck methods anyway. 
#Now if we were to add a make_deck method....

# I couldn't get .count/.length to work, undefined method error.
# Fixed it by creating my own count method but I am unsure if thats the right idea....
# your code goes here
require 'pry'
class Person
    attr_accessor :bank_account
    attr_reader :name
    def initialize(name, happiness=8, hygiene=8) 
        @name = name 
        @bank_account = 25
        @happiness = happiness
        @hygiene = hygiene 
    end 

    def happiness
        @happiness 
    end 

    def happiness=(happiness)
        
        if happiness > 10 
           return @happiness = 10
        elsif happiness < 0 
           return @happiness = 0
        else @happiness = happiness 
        end 
    end 

    def hygiene
        @hygiene 
    end 

    def hygiene=(hygiene)
        
        if hygiene > 10 
           return @hygiene = 10
        elsif hygiene < 0 
           return @hygiene = 0
        else @hygiene = hygiene 
        end 
    end 
     
    def happy? 
        if happiness > 7 
            return true
        end 
        false 
    end 

    def clean? 
        if hygiene > 7 
            return true
        end 
        false 
    end 

    def get_paid(salary)
        #binding.pry 
        @bank_account += salary
        return "all about the benjamins"
    end 

    def take_bath
        #binding.pry 
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out 
        self.hygiene -= 3
        self.happiness += 2 
        return "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?" 
    end 
    
    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else return "blah blah blah blah blah"
        end 
    end
end 


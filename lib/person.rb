require 'pry'

class Person

    # @@all = []

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account 

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8 
        @hygiene = 8
       
       # self.class.all<< self 
    end

    def happiness=(number)
     @happiness = number
        if @happiness > 10
        @happiness = 10
     elsif  @happiness < 0
        @happiness = 0
     end
    end

    def hygiene=(number)
        @hygiene = number 
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
         @hygiene = 0
         end 
       end

       def happy?
          happiness > 7
        end

        def clean?
           hygiene > 7
       end

       def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
       end

       def take_bath
        self.hygiene+=(4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
       end

       def work_out
        self.hygiene-=(3)
        self.happiness+=(2)
        "♪ another one bites the dust ♫"
       end
       
       def call_friend(name)
        self.happiness+=(3)
        name.happiness+=(3)
        "Hi #{name.name}! It's #{self.name}. How are you?"
       end

       def start_conversation(name, topic)
        if topic == "politics"
            name.happiness-=(2)
            self.happiness-=(2)
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
           name.happiness+=(1)
           self.happiness+=(1)
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
       end



    #def self.all 
      #  @@all
    

    #binding.pry
end

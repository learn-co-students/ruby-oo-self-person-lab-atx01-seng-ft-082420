# your code goes here
require 'pry'

class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happy)
        @happiness = happy
        if @happiness > 10
            @happiness = 10
        end 
        if @happiness < 0 
            @happiness = 0
        end
    end

    def hygiene=(clean)
        @hygiene = clean
        if @hygiene > 10
            @hygiene = 10
        end
        if @hygiene < 0 
            @hygiene = 0
        end
    end

    def happy?
        if @happiness >7
            true
        else
            false
        end

    end

    def clean?
        if @hygiene > 7
            true
        else 
            false
        end 
    end 

    def get_paid(salary)
        @bank_account += salary 
        "all about the benjamins"
    end


    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness +=2
        "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        self.happiness +=3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            return 'blah blah sun blah rain'
        else topic == "other"
            return "blah blah blah blah blah"
        end 
    end

    # it "returns a string that reflects the caller's side of the conversation" do
    #     { felix => penelope, penelope => felix }.each do |caller, callee|
    #       convo = "Hi #{callee.name}! It's #{caller.name}. How are you?"
    #       expect(caller.call_friend(callee)).to eq(convo)
    #     end
end
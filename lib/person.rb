require 'pry'
class Person
    attr_reader :name
    attr_accessor :bank_account,:happiness,:hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        @happiness = num
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end 
    end

    def happy?
        if @happiness > 7 
            return true
        else 
            return false
        end 
    end 

    def clean?
        if @hygiene > 7
            return true 
        else 
            return false 
        end 
    end 

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end 

    def hygiene=(num)
        @hygiene = num
        if @hygiene > 10 
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
    end 
    def take_bath
        self.hygiene=(@hygiene + 4)
        return "♪ Rub-a-dub just relaxing in the tub ♫" 
    end 

    def work_out
        self.hygiene=(@hygiene - 3) 
        self.happiness=(@happiness + 2)
        return "♪ another one bites the dust ♫"
    end 

    def call_friend(person)
        self.happiness=(@happiness + 3)
        person.happiness = person.happiness + 3
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == 'politics'
            self.happiness=(@happiness - 2)
            person.happiness = person.happiness - 2
            return 'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            self.happiness=(@happiness + 1)
            person.happiness = person.happiness + 1
            return 'blah blah sun blah rain'
        else
            return "blah blah blah blah blah"
        end
    end
end



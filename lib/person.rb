class Person

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def hygiene=(value)
       @hygiene = [value, 0, 10].sort[1]
    end

    def happiness=(value)
            @happiness = [value, 0, 10].sort[1]
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(salary)
        @bank_account += salary
        p 'all about the benjamins'
    end

    def take_bath
        self.hygiene += 4
        p "♪ Rub-a-dub just relaxing in the tub ♫"

    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        p "♪ another one bites the dust ♫"

    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        p "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        convo_topic = topic
        case convo_topic
            when "politics"
                person.happiness -= 2
                self.happiness -= 2
                p "blah blah partisan blah lobbyist"
            when "weather"
                person.happiness += 1
                self.happiness += 1
                p "blah blah sun blah rain"
            else
                p 'blah blah blah blah blah'
        end
     end
end

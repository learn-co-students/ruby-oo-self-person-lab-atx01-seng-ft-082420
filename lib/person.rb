# your code goes here
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    #happiness and hygiene must be reader methods 
    #because we do not want to allow users to change 
    #those values

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end


    def hygiene=(num)
        if num > 10
            @hygiene = 10
        elsif num < 0 
            @hygiene = 0
        else
            @hygiene = num
        end
    end
    # I don't fully understand why the code below wont work.
    # Is it because we are writing a customized writer method that
    # only allows for changes to our @hygiene(instance variable) value 
    #according to a certain set of rules which we define? 

    # def hygiene
    # if @hygiene > 10
    #     @hygiene = 10
#     elsif @hygiene < 0 
#         @hygiene = 0
#     else
#         @hygiene = @hygiene
#     end
# end



    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end


         
        
        
        def happiness=(num)
            if num > 10
                @happiness = 10
            elsif num < 0 
                @happiness = 0
            else
                @happiness = num
            end
        end
        



        def happy?
            if @happiness > 7
            return true
            else
                return false
            end
        end
    

    
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        # I peeked at the solution to verify my approach to
        # building this method. Here's what I learned: 
        #To call an instance method inside of another instance method,
        # we use the "self" keyword. In this method, "self" refers to 
        #the instance of person the method is being called on. 
        # My original thought was to pass the instance variable @hygiene
        # as the argument to my hygiene= method, but now I see the flaw 
        # in my logic. hygiene= is not a regular method we can just call whenever
        # we want. It is an intance method. To call an instance method 
        # one must have an explicit receiver. Now that I have corrected my approach
        # the instance of self will explicitly receive the #hygiene method 
        self.hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene -= 3
        # self.hygiene =  self.hygiene - 3
        #if we are calling the hygiene instance method on self, why don't we have to pass it 
        # an argument to satisfy the num parameter?
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end

    def call_friend(person)
        person.happiness += 3
        self.happiness += 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            # be careful during the code challenge.
            # Look out for careless mistakes like
            # forgetting to put wrap politics in 
            # quotes.
            person.happiness -= 2
            self.happiness -= 2 
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"  
            person.happiness += 1
            self.happiness += 1 
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
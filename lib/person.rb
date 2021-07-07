# your code goes here
require 'pry'


class Person

attr_reader :name
attr_accessor :bank_account, :happiness, :hygiene 


# First you need to create a person class that is initialized with a name that cannot be changed.
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness =8
        @hygiene = 8
        

    end

    def get_paid(salary)
        @get_paid = salary
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene = self.hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = self.hygiene - 3   
        self.happiness = self.happiness + 2 
        '♪ another one bites the dust ♫'
    end

    def call_friend(class_instance)
        self.happiness = self.happiness + 3
        class_instance.happiness = class_instance.happiness + 3
        "Hi #{class_instance.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            
            person.happiness = person.happiness - 2
            self.happiness = self.happiness - 2
            "blah blah partisan blah lobbyist"
            
        
        elsif  topic == "weather"
            person.happiness = person.happiness + 1
            self.happiness = self.happiness + 1
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
    
    
        end
    end


        

    def happiness
        if @happiness > 10
            @happiness = 10
        end

        if @happiness < 0
            @happiness = 0
        end
        @happiness
    end

    def happy?
        if @happiness > 7
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

    def hygiene
        if @hygiene > 10
        @hygiene = 10
        end
    
        if @hygiene < 0
        @hygiene = 0
        end
        @hygiene
    end
end
#binding.pry
Luis = Person.new("Luis")
Nathan = Person.new("Nathan")
Nathan.call_friend(Luis)
puts Nathan.happiness


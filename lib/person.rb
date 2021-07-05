# your code goes here
class Person
     def initialize(name_set)
        @amount=25
        @name=name_set
        @happiness=8
        @hygiene=8
     end

     def bank_account=(new_amount)
        @amount=new_amount
     end

     def bank_account
        @amount
     end

     def hygiene=(new_hygiene)
        if new_hygiene < 0
            @hygiene = 0
        elsif new_hygiene > 10
            @hygiene= 10
        else 
            @hygiene = new_hygiene
        end  
     end
    
     def happiness=(new_happiness)
        # if new_happiness > 10 
        # @happiness=10
        # elsif new_happiness < 0
        #     @happiness=0
        # else
        #     @happiness=10         
        # end

        if new_happiness < 0
            @happiness = 0
        elsif new_happiness > 10
            @happiness = 10
        else 
            @happiness = new_happiness 
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

     def happiness
        @happiness
     end

     def hygiene
        @hygiene
     end

     def get_paid(payment)
        @amount+=payment
        return "all about the benjamins"
     end
    def name
        @name
    end

    def take_bath
        self.hygiene = self.hygiene + 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene = self.hygiene - 3
        self.happiness = self.happiness + 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend_called)
        self.happiness = self.happiness + 3
        friend_called.happiness = friend_called.happiness + 3
        return "Hi #{friend_called.name}! It's #{self.name}. How are you?"
    end


    def start_conversation(person, topic)
        if topic == "politics"
            
            self.happiness = self.happiness - 2
            person.happiness = person.happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = self.happiness + 1
            person.happiness = person.happiness + 1
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end

    end

end
# your code goes here, if it doesn't then you're mistaken
require "pry"

class Person
    attr_accessor :bank_account
    
    attr_reader :happiness, :hygiene
    
    
    def initialize(name,bank_account=25,happiness=8,hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness.clamp(0,10)
        @hygiene = hygiene.clamp(0,10)
    end

    def happiness=(happiness)
        @happiness =  happiness.clamp(0,10)
    end

    def hygiene=(hygiene)
        @hygiene = hygiene.clamp(0,10)
    end


    # binding.pry

    def name
        @name
    end
   
    #  def happiness
    #      @happiness = @happiness.happiness_limit
    # end

    # def hygiene
    #     @hygiene = @hygiene.clamp(0,10)
    # end
    # def hygiene_limit
    #     if @hygiene > 10
    #         @hygiene = 10
    #     elsif @hygiene < 0
    #         @hygiene = 0
    #     else
    #         @hygiene
    #     end
    # end

    # def happiness_limit
    #     if @happiness >10
    #         @happiness = 10
    #     elsif @happiness< 0
    #         @happiness = 0
    #     else
    #         @happiness
    #     end
    # end

    
    def call_friend(friend)
        self.happiness = self.happiness + 3
        # happiness_limit
        friend.happiness = friend.happiness + 3
        # friend.happiness_limit
        return "Hi #{friend.name}! It's #{@name}. How are you?"
    end



    def clean?
        if @hygiene >7
             true
        else
             false
        end
    end
    def happy?
        if @happiness >7
            true
        else
            false
        end
    end

    def get_paid(amount)
        @bank_account = @bank_account + amount
        return "all about the benjamins"
    end
    def take_bath
        self.hygiene = self.hygiene + 4
        # @hygiene = @hygiene.clamp(0,10)
        # hygiene_limit
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene = self.hygiene - 3
        # @hygiene = @hygiene.clamp(0,10)
        # hygiene_limit
        self.happiness = self.happiness + 2
        # 
        # happiness_limit
        return "♪ another one bites the dust ♫"
    end

    # def test
    #     @happiness = @happiness + 100
    #     happiness_limit
    # end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness = self.happiness - 2
            # happiness_limit
            friend.happiness = friend.happiness - 2
            # friend.happiness_limit
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = self.happiness + 1
            friend.happiness = friend.happiness + 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end
q = Person.new("Q")
r = Person.new("R")
s = Person.new("S")

# binding.pry

puts "WHO LET THE DOGS OUT"
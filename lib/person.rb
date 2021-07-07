require 'pry'
class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness.clamp(0,10)
    @hygiene = hygiene.clamp(0,10)
  end
  def name
    @name
  end
  def happiness=(num)
    @happiness = num.clamp(0,10)
  end
  def hygiene=(num)
    @hygiene = num.clamp(0,10)
  end
  def clean?
    @hygiene.clamp(0,10)
    if @hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    @happiness.clamp(0,10)
    if @happiness > 7
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
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end

binding.pry

puts "TEST"

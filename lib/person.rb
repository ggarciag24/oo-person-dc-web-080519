require('pry')
class Person

  def initialize (name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8

  end

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account


  def min_max_checker(level)
    # binding.pry
      if level > 10
        return 10
      elsif level < 0
        return 0
      else
        return level

      end
  end

def happiness=(level)
    @happiness = min_max_checker(level)
  end

def hygiene=(level)
    @hygiene = min_max_checker(level)
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

def take_bath
  self.hygiene += 4
  return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.hygiene -= 3
  self.happiness += 2
  return "♪ another one bites the dust ♫"
end

def call_friend(person)
  self.happiness += 3
  person.happiness += 3
  return "Hi #{person.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)
  if topic == "politics"
    self.happiness -= 2
    person.happiness -= 2
    return "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    self.happiness += 1
    person.happiness += 1
    return "blah blah sun blah rain"
  else
    return "blah blah blah blah blah"
  end

end
end

# jordan = Person.new("Jordan")
# german = Person.new("German")
# jordan.start_conversation(german, "politics")
# binding.pry
#
# "hi"

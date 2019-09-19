# your code goes here
require 'pry'

class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene
  attr_writer :happiness, :hygiene
  
  def initialize(name)
    @name = name
    @bank_account = 25 
    @happiness = 8
    @hygiene = 8
  end 
  
  def happiness=(number)
     @happiness = number 
     if @happiness > 10
       @happiness = 10 
     elsif @happiness < 1
       @happiness = 0  
     end 
     
     #binding.pry 
  end 
  
  def hygiene=(number)
    @hygiene = number
    if @hygiene > 10
      @hygiene = 10 
    elsif @hygiene < 0 
      @hygiene = 0 
    else @hygiene = number
    end 
  end 
  
  def happy?
    if @happiness >7 
      return true 
    else 
      false 
    end 
  end 
  
  def clean?
    if @hygiene > 7
      return true 
    else 
      false
    end 
  end 
  
  def get_paid(salary)
    @bank_account += salary 
    return 'all about the benjamins'
  end 
  
  def take_bath 
    self.hygiene +=4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end 
  
  def work_out
    self.hygiene -=3
    self.happiness += 2 
    return "♪ another one bites the dust ♫"
  end 
  
  def call_friend(string)
    self.happiness += 3
    string.happiness += 3
    "Hi #{string.name}! It's #{self.name}. How are you?"
  end 
  
  def start_conversation
  end 
  
end 



#person1 = Person.new("") 
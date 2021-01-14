# your code goes here
require 'pry'

class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name_arg)
        @name = name_arg
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def happiness
        # I prefer this method because I'm familiar with it
        #  if @happiness < 0
        #     @happiness = 0
        #  elsif @happiness > 10
        #     @happiness = 10
        #  else
        #     @happiness
        #  end
        @happiness = 0 if @happiness < 0
        @happiness = 10 if @happiness > 10
        @happiness
    end

    def hygiene
        # if @hygiene < 0
        #     @hygiene = 0
        #  elsif @hygiene > 10
        #     @hygiene = 10
        #  else
        #     @hygiene
        #  end
         @hygiene = 0 if @hygiene < 0
         @hygiene = 10 if @hygiene > 10
         @hygiene
     end

     def happy?
        @happiness > 7
     end

     def clean?
        @hygiene > 7
     end

     def get_paid(salary)
        # I added this variable because it wasn't specified elsewhere
        salary = 100 
        @bank_account += salary 
        "all about the benjamins"
     end

     def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
     end

     def work_out
        # Why doesn't this work?
        # @hygiene -= 3 
        # @happiness += 2
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
            person.happiness -= 2
            self.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            'blah blah sun blah rain'
        else topic == "other"
            'blah blah blah blah blah'
        end
     end

 end


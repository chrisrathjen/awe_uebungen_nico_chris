#!/usr/bin/env ruby

class HangMan
	attr_reader :currentWord
	attr_accessor :currentGuesses
	attr_accessor :currentDisplay 
	attr_accessor :alreadyTried
	
	def initialize()
	  @currentWord = "testword"
	  @currentGuesses = 0
	  @currentDisplay = "-" * currentWord.length
	  @alreadyTried = "You already tried: "
  end
end

hm = HangMan.new
puts "Welcome to HangMan"
while hm.currentWord != hm.currentDisplay  
  #STDOUT.sync = true
  STDIN.sync = true
  STDOUT.flush
  puts "Please enter a Character"
  input = gets.chomp
  if input.length != 1
    input = input[0]
  end
  
  if hm.currentWord.include? input
    if hm.currentDisplay.include? input
      puts "The Word already shows that letter"
      hm.currentGuesses += 1
    else
      for i in 0...hm.currentWord.length
        if hm.currentWord[i] == input
          hm.currentDisplay[i] = input
        end
      end
      puts "Correct!\n#{hm.currentDisplay}"
    end
  else
    puts "Letter does not fit"
    hm.alreadyTried = hm.alreadyTried + " " + input
    puts hm.alreadyTried
    puts hm.currentDisplay
    hm.currentGuesses += 1
  end  
end
puts "You made #{hm.currentGuesses} mistakes" 
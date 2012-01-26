#!/usr/bin/env ruby

class HangMan
	attr_accessor :currentWord
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
while hm.currentWord != hm.currentDisplay  
  STDOUT.sync = true
  STDIN.sync = true
  STDOUT.flush
  input = gets.chomp
  if hm.currentWord.include? input.to_s
    if hm.currentDisplay.include? input.to_s
      puts "The Word already shows that latter"
      hm.currentGuesses += 1
    else
      for i in 0...hm.currentWord.length
        if hm.currentWord[i] == input.to_s
          hm.currentDisplay[i] = input.to_s
        end
      end
      puts "Neue Version #{hm.currentDisplay}"
    end
  else
    puts "Letter does not fit"
    hm.alreadyTried = hm.alreadyTried + " " + input.to_s
    puts hm.alreadyTried
    puts hm.currentDisplay
    hm.currentGuesses += 1
  end  
end
puts "You made #{hm.currentGuesses} mistakes" 
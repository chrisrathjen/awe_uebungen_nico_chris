#vlt noch teilwörter als eingabe akzeptieren

class HangMan
	attr_reader :currentWord
	attr_accessor :currentMistakes
	attr_accessor :currentDisplay 
	attr_accessor :alreadyTried
	
	def initialize()
	  @currentWord = File.readlines("/usr/share/dict/words").sample.chomp.downcase # random Word
	  @currentMistakes = 0 # number of mistakes
	  @currentDisplay = "-" * currentWord.length # scrabled Word
	  @alreadyTried = "You already tried: " # wrong guessed chars
  end
end

hm = HangMan.new
puts "Welcome to HangMan!\nYour word looks like this: #{hm.currentDisplay}"
while hm.currentWord != hm.currentDisplay
  puts "\nPlease enter a Character"
  input = gets.chomp
  #filters inputs with more then 1 char
  if input.length != 1
    input = input[0]
  end
  
  #filters empty inputs
  if !input
    input = " "
    puts "You need to enter a Character"
  end
  
  if hm.currentWord.include? input
    if hm.currentDisplay.include? input
      puts "The Word already shows that letter"
      hm.currentMistakes += 1
    else
      for i in 0...hm.currentWord.length
        if hm.currentWord[i] == input
          hm.currentDisplay[i] = input
        end
      end
      puts "\nCorrect!\n\n#{hm.currentDisplay}"
    end
  else
    puts "Letter does not fit"
    hm.alreadyTried = hm.alreadyTried + " " + input
    puts hm.alreadyTried
    puts hm.currentDisplay
    hm.currentMistakes += 1
  end  
end
puts "You made #{hm.currentMistakes} mistakes" 
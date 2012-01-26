words = %w[universitaet awe bremen ruby rails mvc dry bachelor master informatik iphone android tablet nicolas christian]

puts "Let's play hangman."
puts ""

word = words[rand(words.count)] #holt sich ein zufaelliges Wort aus dem words-Array

hangman_word = "" 
word.length.times do 
  hangman_word << '_'
end

puts "We got a word for you: \n" + hangman_word

trials_left = 5
false_trials = 0
used_chars = "" #speichert die bereits eingegebenen Zeichen

while trials_left > 0
  
  
  puts "Enter a character:"
  user_char = gets
  user_char = user_char[0]
  
  if used_chars.include? user_char
    puts "You allready used this one -> " + used_chars.chars.to_a.to_s
    next
  end
  
  used_chars << user_char
  
  if word.include? user_char
    word.length.times do |i| 
      hangman_word[i-1] = user_char if word[i-1] == user_char
    end
    puts "Correct"
    puts hangman_word
  elsif trials_left-1 == 0
    puts "Wrong, you loose. The word was: " + word
    exit
  else
      trials_left = trials_left -1
      puts "Wrong character, you got " + trials_left.to_s + " left. Please try again"
  end
  
  if hangman_word == word
    puts hangman_word + " is the word. You win"
    exit
  end
end


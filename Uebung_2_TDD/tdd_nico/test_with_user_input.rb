#zum manuellen Testen diese Datei aufrufen
require './roman_number_generator'

puts "Insert a number between 1 and 3999"
num = gets
puts RomanNumberGenerator.new.convert_number_to_roman(num.to_i)

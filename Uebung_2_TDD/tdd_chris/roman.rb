class Roman
  num = 
	def convert_to_roman(num)
	 return false if !(num.is_a? Integer)
    return false if num <= 0 || num >= 4000
    
    roman_hash = { 1000 => "M", 900 => "CM", 500 => "D", 400 => "CD", 
                      100 => "C", 90 => "XC", 50 => "L", 40 => "XL", 
                      10 => "X", 9 => "IX", 5 => "V", 4 => "IV", 1 => "I" }
    roman_number = ""
    
    roman_hash.keys.sort{ |a,b| b <=> a }.each do |v|
      while num >= v
        num = num - v
        roman_number << roman_hash[v]
      end
    end
    
    return roman_number 
	end
end
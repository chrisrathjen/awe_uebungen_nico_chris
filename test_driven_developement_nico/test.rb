class RomanNumberGenerator
  
  def convert_number_to_roman(num)
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

require 'test/unit'

class MyTest < Test::Unit::TestCase
  
  def test_number_range
    assert(!RomanNumberGenerator.new().convert_number_to_roman(0), 'Argument can not be 0')
    assert(!RomanNumberGenerator.new().convert_number_to_roman(-1), 'Argument can not be negative')
    assert(!RomanNumberGenerator.new().convert_number_to_roman(4000), 'Argument can not be greater then 3999')
  end
  
  def test_typecheck
    assert(!RomanNumberGenerator.new().convert_number_to_roman('a'), 'Argument is not a number')
  end
  
  def test_check_output
    assert('II' == RomanNumberGenerator.new().convert_number_to_roman(2), 'wrong output')
    assert('V' == RomanNumberGenerator.new().convert_number_to_roman(5), 'wrong output')
    assert('IX' == RomanNumberGenerator.new().convert_number_to_roman(9), 'wrong output')
    assert('MMCXXII' == RomanNumberGenerator.new().convert_number_to_roman(2122), 'wrong output')
  end
  
  def test_check_output_syntax
    assert(!('IIII' == RomanNumberGenerator.new().convert_number_to_roman(4)), 'wrong output syntax')
    assert(!('VIIII' == RomanNumberGenerator.new().convert_number_to_roman(9)), 'wrong output syntax')
    assert(!('VV' == RomanNumberGenerator.new().convert_number_to_roman(10)), 'wrong output syntax')
  end
  
end
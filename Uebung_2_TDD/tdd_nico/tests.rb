require './RomanNumberGenerator'
require 'test/unit'

class MyTest < Test::Unit::TestCase
  
  def test_number_range
    assert(!RomanNumberGenerator.new.convert_number_to_roman(0), 'Argument can not be 0')
    assert(!RomanNumberGenerator.new.convert_number_to_roman(-1), 'Argument can not be negative')
    assert(!RomanNumberGenerator.new.convert_number_to_roman(4000), 'Argument can not be greater then 3999')
  end
  
  def test_typecheck
    assert(!RomanNumberGenerator.new.convert_number_to_roman('a'), 'Argument is not a number')
    assert(!RomanNumberGenerator.new.convert_number_to_roman(3.45), 'Argument is not an integer')
  end
  
  def test_check_output
    assert_equal('II', RomanNumberGenerator.new.convert_number_to_roman(2), 'wrong output')
    assert_equal('V', RomanNumberGenerator.new.convert_number_to_roman(5), 'wrong output')
    assert_equal('IX', RomanNumberGenerator.new.convert_number_to_roman(9), 'wrong output')
    assert_equal('MMCXXII', RomanNumberGenerator.new.convert_number_to_roman(2122), 'wrong output')
  end
  
  def test_check_output_syntax
    assert(!('IIII' == RomanNumberGenerator.new.convert_number_to_roman(4)), 'wrong output syntax')
    assert(!('VIIII' == RomanNumberGenerator.new.convert_number_to_roman(9)), 'wrong output syntax')
    assert(!('VV' == RomanNumberGenerator.new.convert_number_to_roman(10)), 'wrong output syntax')
  end
  
end
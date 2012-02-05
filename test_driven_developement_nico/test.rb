class RomanNumberGenerator
  def convert_number_to_roman(num)
    return false if !(num.is_a? Integer)
    return false if num <= 0
    roman_number = ""
  end
end

require 'test/unit'

class MyTest < Test::Unit::TestCase
  def test_numbers_less_or_equal_zero
    assert(!RomanNumberGenerator.new().convert_number_to_roman(-1), 'Argument can not be 0 or negative')
  end
  def test_typecheck
      assert(!RomanNumberGenerator.new().convert_number_to_roman('a'), 'Argument is not a number')
  end
end
class RomanNumberGenerator
  def convert_number_to_roman(num)
    return false if num <= 0
    roman_number = ""
  end
end

require 'test/unit'

class MyTest < Test::Unit::TestCase
  def test_should_fail_if_number_is_less_or_equal_zero
    assert(!RomanNumberGenerator.new().convert_number_to_roman(-1))
  end
end
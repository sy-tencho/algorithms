require 'minitest/autorun'
require_relative '../lib/pascal'

class PascalTest < Minitest::Test
  def test_fib
    assert_equal 2035800, pascal(30, 7)
    assert_equal 5, pascal(5, 4)
    assert_equal 1961341392318151091491874362916800, pascal(200, 173)
  end
end

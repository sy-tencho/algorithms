require 'minitest/autorun'
require './lib/euclid'

class EuclidTest < Minitest::Test
  def test_euclid
    assert_equal 17, euclid(221, 153)
    assert_equal 1, euclid(1, 1)
    assert_equal 1, euclid(37, 5)
    assert_equal 7, euclid(14, 7)
  end
end

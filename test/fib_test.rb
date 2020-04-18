require 'minitest/autorun'
require 'benchmark'
require_relative '../lib/fib'

class FibTest < Minitest::Test
  def test_fib
    assert_equal 12586269025, top(50)
    assert_equal 354224848179261915075, top(100)
    assert_equal 12586269025, bottom(50)
    assert_equal 354224848179261915075, bottom(100)
  end
end

Benchmark.bm(10) do |b|
  b.report 'recursive' do
    rec(30)
  end

  b.report 'dp top down' do
    top(30)
  end

  b.report 'dp bottom up' do
    bottom(30)
  end
end

require 'minitest/autorun'
require './app/5_hash_symbol/lib/convert_length'
class ConvertLengthTest < Minitest::Test
  def test_convert_length
    assert_equal 39.37, convert_length(1, from: :m, to: :in)
    assert_equal 1, convert_length(39.37, from: :in, to: :m)
    assert_equal 1, convert_length(3.28, from: :ft, to: :m)
  end
end

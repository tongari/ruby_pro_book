require 'minitest/autorun'
require_relative '../lib/convert_hash_syntax'

class ConvertHashSyntax < Minitest::Test
  def test_convert_hash_syntax
    old_syntax = <<~TEXT
    {
      :name => 'Alice',
      :age =>20,
      :gener => :female
    }
    TEXT
    expected = <<~TEXT
    {
      name: 'Alice',
      age: 20,
      gener: :female
    }
    TEXT
    actual = convert_hash_syntax(old_syntax)
    puts actual
    assert_equal expected, actual
  end
end

require_relative './lib/convert_hash_syntax'
old_syntax = <<TEXT
{
  :name => 'Alice',
  :age => 20,
  :gender => :female
}
TEXT
puts convert_hash_syntax(old_syntax)

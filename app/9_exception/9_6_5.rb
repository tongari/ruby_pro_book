require 'date'

def to_date(string)
  Date.parse(string) rescue nil
end

puts to_date('2019-08-26')
puts to_date('abcdef')
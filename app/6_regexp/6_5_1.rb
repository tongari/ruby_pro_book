puts '/\d{3}-\d{4}/と書いた場合と同じ'
p Regexp.new('\d{3}-\d{4}')
puts '---------------------'


url = 'http://example.com'

puts 'スラッシュで囲むと、スラッシュをエスケープする必要がある'
regexp = /http:\/\/example\.com/
p url.scan(regexp)
puts '---------------------'

puts '%rを使うとスラッシュをエスケープしなくて良い'
regexp = %r!http://example\.com!
p url.scan(regexp)
puts '---------------------'

puts '!ではなく{}を区切り文字にする'
%r{http://example\.com}
p url.scan(regexp)
puts '---------------------'

puts '変数が展開されるので/\d{3}-\d{4}/と書いたことと同じになる'
pattern = '\d{3}-\d{4}'
puts '123-4567' =~ /#{pattern}/
puts '---------------------'

if '123-4567' =~ /#{pattern}/
  puts '一致'
end

text = '私の誕生日は1977年7月17日です。'

puts '=~演算子などを使うと、マッチした結果をRegexp.last_matchで取得できる'
p text =~ /(\d+)年(\d+)月(\d+)日/
puts '----------------------------------------'

puts 'MatchDataオブジェクトを取得する'
p Regexp.last_match
puts '----------------------------------------'

puts 'マッチした部分の全体を取得する'
p Regexp.last_match(0)
puts '----------------------------------------'

puts '1番目〜3番目のキャプチャを取得する'
p Regexp.last_match(1)
p Regexp.last_match(2)
p Regexp.last_match(3)
puts '----------------------------------------'

puts '最後のキャプチャ文字列を取得する'
p Regexp.last_match(-1)

text = '私の誕生日は1977年7月17日です。'

puts 'シンボルで名前を指定してキャプチャの結果を取得する'
m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)

puts m[:year] #=>"1977"
puts m[:month] #=>"7"
puts m[:day] #=>"17"

puts "文字列で指定することもできる"
puts m['year'] #=>"1977"

puts '連番で指定することもできる'
puts m[2] #=>"7"


puts 'キャプチャの名前がそのままローカル変数に割り当てられる'
if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
  puts "#{year}/#{month}/#{day}"
end


# puts '正規表現が右辺にくるとローカル変数が作成されない'
# if text =~ /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/
#   # エラーがでる
#   puts "#{year}/#{month}/#{day}"
# end


# puts '正規表現オブジェクトが変数に入ったりした場合も無効'
# regexp = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/
# if text =~ regexp
#   puts "#{year}/#{month}/#{day}"
#   # エラーがでる
# end

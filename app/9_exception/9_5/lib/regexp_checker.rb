print 'Text?: '
text = gets.chomp

begin
  print 'Pattern?: '
  pattern = gets.chomp
  regexp = Regexp.new(pattern)  
rescue RegexpError => e
  puts "不正な正規表現です: #{e.message}"
  puts "class: #{e.class}"
  puts "backtrace: #{e.backtrace}"
  retry
end

matches = text.scan(regexp)
if matches.size > 0
  puts "Matched: #{matches.join(',')}"
else
  puts 'Nothing matched.'
end
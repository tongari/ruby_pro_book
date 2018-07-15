text = '2018/1/31'

case text
when /^\d{3}-\d{4}$/
  puts '郵便番号'

when /^\d{4}\/\d{1,2}\/\d{1,2}$/
  puts '日付'

when /^\d+-\d+-\d+$/
  puts '電話番号'
end

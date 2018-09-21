# def greeting
#   puts 'おはよう'
#   yield if block_given?
#   puts 'こんばんは'
# end
#
# greeting
#
# puts '------------'
#
# greeting { puts 'hi' }

# def greeting
#   puts 'おはよう'
#   text = yield 'こんにちは'
#   puts text
#   puts 'こんばんは'
# end
# 
# puts '------------'
# 
# greeting {|hoge|
#   hoge * 2
# }
# 

def greeting
  puts 'おはよう'
  text = yield 'こんにちは', 12345
  puts text
  puts 'こんばんは'
end

#ブロック引数が１つのときは２つめは無視される
greeting do |hoge|
  hoge * 2  
end

puts '--------------'

def greeting
  puts 'おはよう'
  text = yield 'こんにちは'
  puts text
  puts 'こんばんは'
end

#ブロック引数が２個のとき２つ目の引数はnil
greeting do |text,other|
  text * 2 + other.inspect
end

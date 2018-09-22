# def greeting(&block)
#   puts 'おはよう'
#   text = block.call('こんにちは')
#   puts text
#   puts 'こんばんは'
# end
#
# greeting do |text|
#   text * 2
# end

def greeting(&block)
  puts 'おはよう'
  # unless block.nil?
  if block_given?
    # text = block.call('こんにちは')
    text = yield 'こんにちは'
    puts text
  end
  puts 'こんばんは'
end

greeting
puts '--------------'
greeting { |text|
  text * 2
}

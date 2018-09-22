def greeting_ja(&block)
  text = ['おはよう', 'こんにちは','こんばんは']
  greeting_common(text, &block)
end

def greeting_en(&block)
  text = ['good morning', 'hello', 'good evening']
  greeting_common(text, &block)
end

def greeting_common(texts, &block)
  puts texts[0]
  puts block.call(texts[1])
  puts texts[2]
end

greeting_ja do |text|
  text * 2
end

puts '--------------------'

greeting_en do |text|
  text.upcase
end

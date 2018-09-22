def greeting(&block)
  puts 'おはよう'
  text =
    if block.arity == 1
      #ブロック引数が 1つの場合
      yield 'こんにちは'

    elsif block.arity == 2
      #ブロック引数が 2つの場合
      yield 'こんに','ちは'
    end
  puts text
  puts 'こんばんは'
end

greeting do |text|
  text * 2
end

puts '------------'

greeting do |text_1, text_2|
  text_1 * 2 + text_2 * 2
end

begin
  # 1/0
  'hoge'.foo
# rescue ZeroDivisionError
#   puts '0で徐算しました'
# rescue NoMethodError
#   puts '存在しないメソッドが呼び出されました'  

# rescue ZeroDivisionError, NoMethodError

rescue ZeroDivisionError, NoMethodError => e
  puts '0で徐算したか、存在しないメソッドが呼び出されました'
  puts "エラー: #{e.class} #{e.message}"
end
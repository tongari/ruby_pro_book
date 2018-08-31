File.open('some.txt','w') do |file|
  file << 'Hello'
  # わざと例外を発生させる
  1/0
end
puts 'iオプションを付けると大文字小文字を区別しない'
puts 'HELLO' =~ /hello/i
puts "----------------------------------------"

puts 'Regexp.newを使う場合は、Regexp::IGNORECASEという定数を渡します。'
regexp = Regexp.new('hello', Regexp::IGNORECASE)
puts 'HELLO' =~ regexp
puts '----------------------------------------'

puts 'mオプションがないと.は改行文字にマッチしない'
p "HELLO\nBye" =~ /HELLO.Bye/

puts 'mオプションをつけると.は改行文字にマッチする'
p "HELLO\nBye" =~ /HELLO.Bye/m

puts 'Regexp.newを使う場合は、Regexp::MULTILINEという定数を渡します。'
regexp = Regexp.new('HELLO.Bye', Regexp::MULTILINE)
puts "HELLO\nBye" =~ regexp
puts '----------------------------------------'

puts 'xオプションを付けたので改行やスペースが無視され、コメントも書ける'
regexp = /
  \d{3} #郵便番号の先頭3桁
  - #区切りハイフン
  \d{4} #郵便番号の末尾4桁
/x
p '123-4567' =~ regexp
p '123-4567'.scan(regexp)

puts 'xオプションを付けているときに、空白を無視せず正規表現の一部として扱いたい場合はバックスラッシュでエスケープします。'
regexp = /
  \d{3}
  \ #半角スペースで区切る
  \d{4}
/x
p '123 4567' =~ regexp


puts 'Regexp.newを使う場合は、Regexp::EXTENDEDという定数を渡します。'
pattern = <<'TEXT'
  \d{3} #郵便番号の先頭3桁
  - #区切りハイフン
  \d{4} #郵便番号の末尾4桁
TEXT
regexp = Regexp.new(pattern,Regexp::EXTENDED)
p '123-4567' =~ regexp
puts '----------------------------------------'

puts 'iオプションとmオプションを同時に使う'
p "HELLO\nBYE" =~ /Hello.Bye/im
puts '----------------------------------------'

puts 'Regexp.newを使う場合は|で連結（論理和を作成）します。'
regexp = Regexp.new('Hello.Bye', Regexp::IGNORECASE | Regexp::MULTILINE)
puts "HELLO\nBYE" =~ regexp
puts '----------------------------------------'

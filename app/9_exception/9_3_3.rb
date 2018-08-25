def curerncy_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    # raiseメソッドに例外クラスのインスタンスを渡す(newの引数はエラーメッセージになる)
    raise ArgumentError.new("無効な国名です。#{country}")
  end
end

curerncy_of(:japan)
curerncy_of(:italy)
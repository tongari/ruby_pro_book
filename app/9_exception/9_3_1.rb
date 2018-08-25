def curerncy_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    #意図的に例外を発生させる
    raise "無効な国名です。#{country}"
  end
end

curerncy_of(:japan)
curerncy_of(:italy)
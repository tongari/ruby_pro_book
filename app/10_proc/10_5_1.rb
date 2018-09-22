def judge(age)
  adult = Proc.new {|n| n > 20}
  child = Proc.new {|n| n < 20}

  case age
  when adult
    '大人'
  when child
    '子供'
  else
    '二十歳'
  end
end

puts judge(21)
puts judge(18)
puts judge(20)

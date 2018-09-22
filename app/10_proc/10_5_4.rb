def proc_return
  f = Proc.new{|n| return n * 10 }
  ret = [1,2,3].map(&f)
  "ret: #{ret}"
end

def lambda_return
  f = ->(n) { return n * 10 }
  ret = [1,2,3].map(&f)
  "ret: #{ret}"
end

p proc_return
p lambda_return

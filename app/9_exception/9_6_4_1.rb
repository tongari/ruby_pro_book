#正常に終了した場合
ret = 
  begin
    'OK'
  rescue
    'error'
  ensure
    'ensure'
  end
puts ret

# 例外が発生した場合
ret = 
  begin
    1/0
    'OK'
  rescue
    'error'
  ensure
    'ensure'
  end
puts ret  
file = File.open('some.txt','w')

begin
  file << 'Hello'
ensure
  file.close
end
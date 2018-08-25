puts 'Start'
module Greeter
  def hello
    'hello'
  end  
end

begin
  greeter = Greeter.new  
rescue => exception
  puts "\"#{exception}\" が発生"
  puts '例外が発生したが、このまま続行する'
end

puts 'End'
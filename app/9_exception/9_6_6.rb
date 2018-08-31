begin
  1/0
rescue => e
  puts "#{e.class} #{e.message}"
  puts e.backtrace
end

begin
  1/0
rescue
  puts "#{$!.class} #{$!.message}"
  puts $@
end
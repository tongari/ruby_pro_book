require "bundler/setup"
require "pry"
# def to_hex(r,g,b)
#   hex = '#'
#   [r,g,b].each do |n|
#     hex += n.to_s(16).rjust(2, '0')
#   end
#   hex
# end

def to_hex(r,g,b)
  [r,g,b].inject('#') do |hex,n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

# def to_ints(hex)
#   ret = [
#     hex[1..2].to_i(16),
#     hex[3..4].to_i(16),
#     hex[5..6].to_i(16)
#   ]
#   # binding.pry
#   ret
# end

def to_ints(hex)
  hex.scan(/\w\w/).map(&:hex)
end

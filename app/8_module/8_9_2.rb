module Greeting
  def hello
    'hello.'
  end
end

module Aisatsu
  include Greeting

  def konnicahiwa
    'こんにちわ。'
  end
end

class User
  include Aisatsu
end

puts User.new.konnicahiwa
puts User.new.hello
p User.ancestors

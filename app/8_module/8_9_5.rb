###
# NOTE なせか、refinementsが動かない。あとで調査
###
require_relative './string_shuffle'

# ここではまだshuffleは使えない
# puts 'Alice'.shuffle

#トップレベルでusingすると、ここからファイルの最後までshuffleメソッドが有効になる
using StringShuffle

puts 'Alice'.shuffle

# class User
#
#   def initialize(name)
#     @name = name
#   end
#
#   def shuffled_name
#     @name.shuffle
#   end
# end
#
# user = User.new('Alice')
# puts user.shuffled_name

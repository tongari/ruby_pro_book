#以下のProductクラスは外部ライブラリで定義されている想定
class Product
  def name
    "A great film"
  end
end

# 変更前のnameメソッドの実行結果
product = Product.new
puts product.name

#prependするためのモジュールを定義する
module NameDecorator
  def name
    #prependするとsuperはミックスインした先のクラスのnameメソッドを呼び出す
    "<<#{super}>>"
  end
end

#既存メソッドを変更するためにProductクラスを再オープンする
# class Product
#   prepend NameDecorator
# end

# エイリアスメソッドを使った場合と同じ結果が得られる
puts product.name

# Productクラスと同じようにnameメソッドを持つクラスがあったとする
class User
  def name
    'Alice'
  end
end

user = User.new
puts user.name

# class User
#   # prependを使えばUserクラスのnameメソッドを置き換えることができる
#   prepend NameDecorator
# end

puts user.name

puts '-------------------'
Product.prepend NameDecorator
User.prepend NameDecorator

puts product.name
puts user.name

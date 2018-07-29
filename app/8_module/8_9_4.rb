#以下のProductクラスは外部ライブラリで定義されている想定
class Product
  def name
    "A great film"
  end
end

# 変更前のnameメソッドの実行結果
product = Product.new
puts product.name

#既存メソッドを変更するためにProductクラスを再オープンする
class Product
  # 既存のnameメソッドはname_originalという名前で呼び出せるようにしておく
  alias name_original name

  #nameメソッドの挙動を変える
  #（もともと実装されていたnameメソッドも再利用する）
  def name
    "<<#{name_original}>>"
  end
end

#変更後のnameメソッドの実行結果
puts product.name

module A
  def to_s
    "<A>#{super}"
  end
end

class Product
  prepend A

  def to_s
    "<Product>#{super}"
  end
end

puts Product.new.to_s
p Product.ancestors

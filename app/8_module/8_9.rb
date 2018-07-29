module A
  def to_s
    "<A>#{super}"
  end
end

module B
  def to_s
    "<B>#{super}"
  end
end

class Product
  def to_s
    "<Product>#{super}"
  end
end

class DVD
  include A
  include B

  def to_s
    "<DVD>#{super}"
  end
end


puts DVD.new.to_s
p DVD.ancestors
puts DVD.new.foo

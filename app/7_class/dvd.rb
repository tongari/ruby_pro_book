require_relative './product'
class DVD < Product
  attr_reader :running_time
  TYPE = 'blue ray'
  TYPE = 'hoge'

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end

  def to_s
    "name:  #{name}"
    # "#{super}, running_time: #{@running_time}"
  end

  def stock?
    true
  end

end


item = Product.new('item', 100)
puts item.stock?


dvd = DVD.new('movie', 1000, '10:00')
puts dvd.to_s
puts DVD::TYPE
DVD::TYPE = 'huga'
puts DVD::TYPE
puts dvd.stock?

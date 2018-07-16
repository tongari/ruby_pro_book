class Product
  def initialize(name, price)
    @name = name
    @price = price
  end

  def to_s
    "name: #{@name}, price: #{@price}"
  end

  def stock?
    raise 'Must implement stock? in subclass.'
  end

  private

  def name
    'product item'
  end

end

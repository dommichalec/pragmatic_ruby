class Order
  attr_reader :email, :order

  def initialize(email, order)
    @email = email
    @order = order
  end

  def to_s
    "#{@email}: #{@order}"
  end
end

orders = []

5.times do |n|
  orders << Order.new("customer#{n+1}@aol.com", n * 10)
end

puts orders

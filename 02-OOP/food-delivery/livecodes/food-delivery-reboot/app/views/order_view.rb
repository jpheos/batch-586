class OrderView
  def display_undelivered_orders(orders)
    orders.each do |order|
      puts "#{order.id} - #{order.meal.name} #{order.customer.name} #{order.employee.username}"
    end
  end

  def ask_for_id
    puts "give an id "
    print "> "
    gets.chomp.to_i
  end
end
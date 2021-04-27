class CustomerView
  def display(customers)
    customers.each_with_index do |customer, index|
      puts "#{index + 1} - #{customer.name} #{customer.address} €"
    end
  end

  def ask_for(stuff)
    puts "please enter #{stuff}"
    print "> "
    gets.chomp
  end
end
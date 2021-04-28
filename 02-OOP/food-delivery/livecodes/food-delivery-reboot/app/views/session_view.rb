class SessionView
  def ask_for(stuff)
    puts "please give #{stuff}"
    print "> "
    gets.chomp
  end

  def wrong_credentials
    puts "wrong credentials"
  end
end
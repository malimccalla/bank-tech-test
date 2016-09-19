require 'bank'

class Interface
  def print_menu
    puts "-" * 50
    puts "Welcome, what would you like to do?"
    puts "-" * 50
    puts "1. Check balance"
    puts "2. Deposit"
    puts "3. Withdraw"
    puts "4. View Statement"
    puts "5. Exit"
  end
end

class Bank

  attr_reader :balance

  NO_FUNDS = 0

  def initialize
    @balance = NO_FUNDS
  end

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

  def deposit(amount)
    raise "Can not deposit negative funds." if amount < NO_FUNDS
    @balance += amount
  end

  def withdraw(amount)
    raise "Can not withdraw negative funds." if amount < NO_FUNDS
    raise "Insignificant funds" if insignificant_funds?(amount)
    @balance -= amount
  end

  private

  def insignificant_funds?(amount)
    @balance - amount < NO_FUNDS
  end

end

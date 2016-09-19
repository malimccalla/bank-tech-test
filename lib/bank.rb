class Bank

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise "Insignificant funds" if insignificant_funds?(amount)
    @balance -= amount
  end

  private

  def insignificant_funds?(amount)
    @balance - amount < 0
  end

end

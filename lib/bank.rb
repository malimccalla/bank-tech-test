require 'transaction'
require 'statement'

class Bank

  attr_reader :balance, :statement

  NO_FUNDS = 0

  def initialize
    @balance = NO_FUNDS
    @statement = Statement.new
  end

  def deposit(amount)
    error_check(amount)
    @balance += amount
    @transaction = Transaction.new(NO_FUNDS,amount,@balance)
    @statement.log(@transaction)
  end

  def withdraw(amount)
    error_check(amount)
    @balance -= amount
    @transaction = Transaction.new(amount,NO_FUNDS,@balance)
    @statement.log(@transaction)
  end

  private

  def insignificant_funds?(amount)
    @balance - amount < NO_FUNDS
  end

  def error_check(amount)
    raise "Can not deal with negative funds." if amount < NO_FUNDS
    raise "Insignificant funds" if insignificant_funds?(amount)
  end

end

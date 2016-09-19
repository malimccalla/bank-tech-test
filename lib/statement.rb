class Statement

  attr_reader :transactions

  def initialize
    @statement = []
  end

  def log(transaction)
    @statement << transaction
  end

  def print
    puts "Date || Credit || Debit || Balance"
    @statement.each do |transaction|
      puts "#{transaction.date} || #{transaction.credit} || #{transaction.debit} || #{transaction.balance}"
    end
  end

end

require 'transaction'

describe Transaction do

  let(:transaction) {described_class.new(100, 0, 100)}

  describe '#debit' do
    it 'returns the debit of the transaction' do
      expect(transaction.debit).to eq 0
    end
  end

  describe '#credit' do
    it 'returns the debit of the transaction' do
      expect(transaction.debit).to eq 100
    end
  end

  describe '#balance' do
    it 'returns the debit of the transaction' do
      expect(transaction.balance).to eq 100
    end
  end

end

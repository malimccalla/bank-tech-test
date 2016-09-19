require 'bank'

describe Bank do

  let(:bank) {described_class.new}

  describe '#balance' do

    it 'instantiates with no balance' do
      expect(bank.balance).to eq 0
    end

  end

  describe '#deposit' do

    it 'allows for the deposit of money' do
      bank.deposit(20)
      expect(bank.balance).to eq 20
    end

  end

  describe '#withdraw' do

    context 'when no money in account' do
      it 'doesnt allow withdrawals of money' do
        expect{bank.withdraw(10)}.to raise_error "Insignificant funds"
      end
    end

    context 'with money in account' do

      before :each do
        bank.deposit(100)
      end

      it 'allows for withdrawals of money' do
        bank.withdraw(20)
        expect(bank.balance).to eq 80
      end

    end

  end

end

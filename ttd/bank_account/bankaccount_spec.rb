require_relative './bankaccount'
RSpec.describe BankAccount do
  before (:each) do
    @bankaccount1 = BankAccount.new('John', 200, 1000)
    @bankaccount2 = BankAccount.new('Jane', 500, 4000)
  end
  it 'has method for returning checking account balance' do
    @bankaccount1.show_checking
    expect(@bankaccount1.show_checking).to eq(200)
  end

  it 'has method for returning total balance' do
    @bankaccount1.total
    expect(@bankaccount1.total).to eq(1200)
  end

  it 'has method for withdrawing cash' do
    @bankaccount1.withdraw_checking
    expect(@bankaccount1.withdraw_checking 100).to eq(100)
  end
end

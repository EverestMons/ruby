class BankAccount
  @@number_of_accounts = 0

  def initialize(user, checking, saving)
    @user = user
    @checking = checking
    @saving = saving
    @@number_of_accounts += 1
    @interest_rate = 0.01
  end

  def show_account
    puts number
  end

  def show_all
    puts User:  @user, Checking: @checking, Saving: @saving, show_account
  end

  def show_checking
    puts checking
  end

  def withdraw_checking x
    unless x > @checking
      @checking -= x
      puts "You took out $#{x}, and you're new checking balance is $#{@checking}"
    else
      puts "Sorry, but there is not enough money in your account. Please take out a smaller portion and add more when you can"
    end
  end

  def deposit_checking x
    @checking += x
    puts "You're new checking balance is $#{@checking}"
  end

  def show_saving
    puts saving
  end

  def deposit_saving x
    @saving += x
    puts "You're new saving balance is $#{@saving}"
  end

  def withdraw_saving x
    unless x > @saving
      @saving -= x
      puts "You took out $#{x}, and you're new saving balance is $#{@saving}"
    else
      puts "Sorry, but there is not enough money in your account. Please take out a smaller portion and add more when you can"
    end
  end

  def total
    puts "You're total balance is " + (@checking + @saving).to_s
  end


  private
    def number
      account_number = ""
      5.times do |i|
        account_number += rand(500).to_s
      end
      return "You're account number is " + account_number
    end

    def checking
      statement = ""
      statement = "Your checking balance is $#{@checking}"
      return statement
    end

    def saving
      statement = ""
      statement = "Your saving balance is $#{@saving}"
      return statement
    end

end

user = BankAccount.new("Mark", 500, 10000)
user.show_account
user.show_checking
user.show_saving
user.deposit_checking 100
user.withdraw_checking 476
user.show_saving
user.show_all

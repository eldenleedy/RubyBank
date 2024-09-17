# frozen-string-literal: true

# Account object.
class Account
  attr_reader :name, :balance

  def initialize(name, initial_balance = 0)
    @name = name
    @balance = initial_balance
  end

  def check_balance
    puts "Current balance of #{@name}: $#{@balance}"
    @balance >= 0
  end

  def to_s
    "Account: #{@name} | Balance: $#{@balance}"
  end

  def deposit(money)
    if money.positive?
      @balance += money
      puts "Deposited $#{money}. New balance: $#{@balance}"
    else
      puts 'Amount be greater than 0!'
    end
  end

  def withdraw(money)
    if money.positive? && money <= @balance
      @balance -= money
      "Withdrew $#{money}. New balance: $#{@balance}"
    elsif money.positive?
      puts "Not enough funds! Current balance: $#{@balance} | Attempted withdrawal amount: $#{@money}"
    else
      puts 'Amount be greater than 0!'
    end
  end

  def transfer(money, target_account)
    if money.positive? && money <= @balance
      @balance -= money
      target_account.deposit(money)
      puts "Transferred $#{money} to #{target_account.name}."
      puts "New account balance: $#{@balance}"
    elsif money > @balance
      puts "Not enough funds! Current balance: $#{@balance}"
    else
      puts 'Amount must be greater than 0!'
    end
  end
end

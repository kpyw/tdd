class BankAccount

  def initialize (amount = 0)
    @balance = amount
  end

  def deposit (amount)
    @balance += amount
    # @newbalance = @balance + amount
  end

  def withdrawal (amount)
    @balance -= amount
  end

  def transfer_to (other_account, amount)
    other_account.deposit(amount)
    @balance -= amount
  end

  def balance
    @balance
  end


end

# def test_initial_balance
#     account = BankAccount.new
#     assert_equal 0, account.balance
#   end

#   def test_optional_initial_balance
#     account = BankAccount.new(100)
#     assert_equal 100, account.balance
#   end

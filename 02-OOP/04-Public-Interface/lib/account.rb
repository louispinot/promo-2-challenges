# This is how you define your own custom exception classes
require_relative './transaction'

class DepositError < StandardError
end

class BankAccount

  # Contract for the BankAccount class
  # - you can access full owner's name and position, but partial IBAN
  # - you cannot access full IBAN
  # - you can print partial account infos
  # - you can print transactions only with a password
  # - you can withdraw or deposit money
  # - You can see the balance of the account (through the position variable)

  attr_reader :name
  attr_reader :position

  MIN_DEPOSIT =  100

  def initialize(name, iban, initial_deposit, password)
    raise DepositError, "Insufficient deposit" unless initial_deposit > MIN_DEPOSIT
    @password = password
    @transactions = []
    @position = 0
    @name, @iban = name, iban

    add_transaction(initial_deposit)
  end

  def withdraw(amount)
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message
    add_transaction(-amount)
    puts "You have just withdrawed #{amount}€"
  end

  def deposit(amount)
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message
    add_transaction(amount)
    puts "You have just deposited #{amount}€"
  end

  def transactions_history(args = {})
    # TODO: Check if there is a password and if so if it is correct
    # TODO: return a string displaying the transactions, BUT NOT return the transaction array !
    puts "Please enter you pwd"
    pwd = gets.chomp
    transactions_history = ""
    if pwd == @password
      @transactions.each do |transaction|
        transactions_history << (transaction.to_s << "\n")
      end
    else
      transactions_history = "wrong password"
    end
    return transactions_history
  end

  def iban
    # TODO: Hide the middle of the IBAN like FR14**************606 and return it
    "#{@iban[0..3]}**************#{@iban[-3..-1]}"
  end

  def to_s
    # Method used when printing account object as string (also used for string interpolation)
    # TODO: Displays the account owner, the hidden iban and the position of the account

    "account owner : #{@name}
    #{iban}
    position : #{@position}"
  end

  private

  def add_transaction(amount)
    # TODO: add the amount in the transactions array
    # TODO: update the current position (which represents the balance of the account)
    transaction = Transaction.new(amount)
    @transactions << transaction
    @position += amount
  end

end

#p my_account = BankAccount.new("Bruce Lee", "FR14-2004-1010-0505-0001-3M02-606", 200, "brucelit")
#p my_account.withdraw(50)
#p my_account.deposit(100)
#p my_account.position
#p my_account.transactions_history
#print my_account.to_s.chomp


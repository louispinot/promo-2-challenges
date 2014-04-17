# Optional
class Transaction
  def initialize(amount)
    # Initialize amount and date of transaction
    @amount = amount
    @date = Time.now
  end

  def to_s
    # Nicely print transaction infos using Time#strftime.
    if @amount >= 0
      "Date : #{@date}; Deposit : #{@amount}"
    else
      "Date : #{@date}; Withdrawal : #{-@amount}"
    end
  end
end

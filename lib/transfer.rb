class Transfer
  # your code here
  attr_accessor :sender, :recipient, :amount, :status

  def initialize(sender, recipient, amount)
    @sender = sender
    @recipient = recipient
    @amount = amount
    @status = "pending"
  end

  def valid?
    self.sender.valid? && self.sender.balance > self.amount && self.recipient.valid?
  end

  def execute_transaction
    
  end

end

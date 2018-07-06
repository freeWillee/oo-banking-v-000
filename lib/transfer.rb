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
    self.sender.valid? && self.recipient.valid?
  end

  def execute_transaction
    if self.sender.balance > self.amount && self.valid?
      self.sender.balance -= self.amount
      self.recipient.balance += self.amount
      self.status = "complete"
    else
      self.status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    if self.valid?
      self.sender.balance -= self.amount
      self.recipient.balance += self.amount
      self.status = "completed"
    else
      self.status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end


end

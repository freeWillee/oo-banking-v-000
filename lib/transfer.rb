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
    
  end

end

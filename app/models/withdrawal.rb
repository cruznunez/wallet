class Withdrawal < ActiveRecord::Base
  validates :amount, presence: true

  before_create :round

  def round
    self.amount = self.amount.round(2)
  end

end

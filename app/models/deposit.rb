class Deposit < ActiveRecord::Base
  validates :amount, presence: true

  before_create :round

  def self.array
    self.all.each.map{|x| x.amount.to_f}
  end

  def self.total
    self.all.reduce(0){|sum, x| sum + x.amount.to_f}
  end

  private def round
    self.amount = self.amount.round(2)
  end

end

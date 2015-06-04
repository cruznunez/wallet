class Deposit < ActiveRecord::Base
  validates :amount, presence: true

  before_create :round

  private def round
    self.amount = self.amount.round(2)
  end

  def self.array
    self.all.each.map{|x| x.amount.to_f}
  end

  def self.total
    self.all.reduce(0){|sum, x| sum + x.amount.to_f}
  end

  def this_month?
    (self.this_year?) && (self.created_at.strftime("%m").to_i == Time.now.strftime("%m").to_i)
  end

  def this_year?
    self.created_at.strftime("%Y") == Time.now.strftime("%Y")
  end

  def last_month?
    self.created_at.strftime("%m").to_i == (Time.now - 1.month).strftime("%m").to_i
  end

  def day
    self.created_at.strftime("%e")
  end

  def less_than_a_month_ago?
    (self.this_year?) && ((self.this_month?) || (self.last_month? && (self.day) > Time.now.strftime("%e")))
  end
end

class PagesController < ApplicationController
  def home
    @deposits = Deposit.all
    @withdrawals = Withdrawal.all

  end
end

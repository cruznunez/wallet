class PagesController < ApplicationController
  def home
    @deposits = Deposit.all
    @withdrawals = Withdrawal.all
  end

  def transactions
    @deposits = Deposit.all
    @withdrawals = Withdrawal.all
  end

  def new_transaction
  end

  def h8
  end
end

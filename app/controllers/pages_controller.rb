class PagesController < ApplicationController
  def home
  end

  def transactions
    @deposits = Deposit.all
    @withdrawals = Withdrawal.all
  end

  def new_transaction
  end
end

require 'test_helper'

class WithdrawalTest < ActiveSupport::TestCase
  test "validation" do
    depo1 = Withdrawal.new
    depo2 = Withdrawal.new(amount: 3)
    refute depo1.save
    assert depo2.save
  end

  test "array" do
    assert_equal [9.99, 9.99], Withdrawal.array

  end

  test "total" do
    assert_equal 9.99*2, Withdrawal.total
  end

  test "round" do
    depo1 = Withdrawal.create(amount: 5.0044252346451)
    depo2 = Withdrawal.create(amount: 5.0954252346451)
    assert_equal 5.0, depo1.amount
    assert_equal 5.1, depo2.amount
  end
end

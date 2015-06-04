require 'test_helper'
require 'minitest/pride'

class DepositTest < ActiveSupport::TestCase

  test "validation" do
    depo1 = Deposit.new
    depo2 = Deposit.new(amount: 3)
    refute depo1.save
    assert depo2.save
  end

  test "array" do
    assert_equal [9.99, 9.99], Deposit.array

  end

  test "total" do
    assert_equal 9.99*2, Deposit.total
  end

  test "round" do
    depo1 = Deposit.create(amount: 5.0044252346451)
    depo2 = Deposit.create(amount: 5.0954252346451)
    assert_equal 5.0, depo1.amount
    assert_equal 5.1, depo2.amount
  end

end

require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get transactions" do
    get :transactions
    assert_response :success
  end

  test "should get new_transaction" do
    get :new_transaction
    assert_response :success
  end

end

require 'test_helper'

class MiningTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mining_type = mining_types(:one)
  end

  test "should get index" do
    get mining_types_url
    assert_response :success
  end

  test "should get new" do
    get new_mining_type_url
    assert_response :success
  end

  test "should create mining
require 'test_helper'

class CoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coin = coins(:one)
  end

  test "should get index" do
    get coins_url
    assert_response :success
  end

  test "should get new" do
    get new_coin_url
    assert_response :success
  end

  test "should create coin" do
    assert_difference('Coin.count') do
      post coins_url, params: { coin: { a
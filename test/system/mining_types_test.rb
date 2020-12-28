require "application_system_test_case"

class MiningTypesTest < ApplicationSystemTestCase
  setup do
    @mining_type = mining_types(:one)
  end

  test "visiting the index" do
    visit mining_types_url
    assert_selector "h1", text: "Mining Types"
  end

  test "creating a 
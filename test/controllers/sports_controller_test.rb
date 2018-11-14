require 'test_helper'

class SportsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sports_index_url
    assert_response :success
  end

  test "should get show" do
    get sports_show_url
    assert_response :success
  end

  test "should get new" do
    get sports_new_url
    assert_response :success
  end

  test "should get update" do
    get sports_update_url
    assert_response :success
  end

  test "should get delete" do
    get sports_delete_url
    assert_response :success
  end

end

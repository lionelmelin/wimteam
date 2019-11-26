require 'test_helper'

class UserWalksControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_walks_create_url
    assert_response :success
  end

  test "should get update" do
    get user_walks_update_url
    assert_response :success
  end

  test "should get destroy" do
    get user_walks_destroy_url
    assert_response :success
  end

end

require 'test_helper'

class PositionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get positions_create_url
    assert_response :success
  end

  test "should get update" do
    get positions_update_url
    assert_response :success
  end

end

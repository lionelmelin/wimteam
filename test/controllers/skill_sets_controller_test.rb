require 'test_helper'

class SkillSetsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get skill_sets_create_url
    assert_response :success
  end

  test "should get update" do
    get skill_sets_update_url
    assert_response :success
  end

  test "should get destroy" do
    get skill_sets_destroy_url
    assert_response :success
  end

end

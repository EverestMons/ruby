require 'test_helper'

class TeaUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get tea_users_create_url
    assert_response :success
  end

  test "should get destroy" do
    get tea_users_destroy_url
    assert_response :success
  end

end

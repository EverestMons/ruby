require 'test_helper'

class HitsControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get hits_all_url
    assert_response :success
  end

  test "should get single_user" do
    get hits_single_user_url
    assert_response :success
  end

end

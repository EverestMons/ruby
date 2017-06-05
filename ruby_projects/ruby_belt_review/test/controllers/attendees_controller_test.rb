require 'test_helper'

class AttendeesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get attendees_create_url
    assert_response :success
  end

  test "should get attending" do
    get attendees_attending_url
    assert_response :success
  end

  test "should get destroy" do
    get attendees_destroy_url
    assert_response :success
  end

end

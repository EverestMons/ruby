require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get messages_create_url
    assert_response :success
  end

  test "should get edit" do
    get messages_edit_url
    assert_response :success
  end

  test "should get update" do
    get messages_update_url
    assert_response :success
  end

end

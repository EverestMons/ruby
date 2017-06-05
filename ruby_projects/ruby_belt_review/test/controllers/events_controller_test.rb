require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get events_new_url
    assert_response :success
  end

  test "should get create" do
    get events_create_url
    assert_response :success
  end

  test "should get show" do
    get events_show_url
    assert_response :success
  end

  test "should get edit" do
    get events_edit_url
    assert_response :success
  end

  test "should get update" do
    get events_update_url
    assert_response :success
  end

  test "should get user_state" do
    get events_user_state_url
    assert_response :success
  end

  test "should get other_states" do
    get events_other_states_url
    assert_response :success
  end

end

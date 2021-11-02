require "test_helper"

class Web::Event::LocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @web_event_location = web_event_locations(:one)
  end

  test "should get index" do
    get web_event_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_web_event_location_url
    assert_response :success
  end

  test "should create web_event_location" do
    assert_difference('Web::Event::Location.count') do
      post web_event_locations_url, params: { web_event_location: { title: @web_event_location.title } }
    end

    assert_redirected_to web_event_location_url(Web::Event::Location.last)
  end

  test "should show web_event_location" do
    get web_event_location_url(@web_event_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_web_event_location_url(@web_event_location)
    assert_response :success
  end

  test "should update web_event_location" do
    patch web_event_location_url(@web_event_location), params: { web_event_location: { title: @web_event_location.title } }
    assert_redirected_to web_event_location_url(@web_event_location)
  end

  test "should destroy web_event_location" do
    assert_difference('Web::Event::Location.count', -1) do
      delete web_event_location_url(@web_event_location)
    end

    assert_redirected_to web_event_locations_url
  end
end

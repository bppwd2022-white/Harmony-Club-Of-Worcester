require "test_helper"

class Web::Event::ListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @web_event_listing = web_event_listings(:one)
  end

  test "should get index" do
    get web_event_listings_url
    assert_response :success
  end

  test "should get new" do
    get new_web_event_listing_url
    assert_response :success
  end

  test "should create web_event_listing" do
    assert_difference('Web::Event::Listing.count') do
      post web_event_listings_url, params: { web_event_listing: { location_id: @web_event_listing.location_id, title: @web_event_listing.title } }
    end

    assert_redirected_to web_event_listing_url(Web::Event::Listing.last)
  end

  test "should show web_event_listing" do
    get web_event_listing_url(@web_event_listing)
    assert_response :success
  end

  test "should get edit" do
    get edit_web_event_listing_url(@web_event_listing)
    assert_response :success
  end

  test "should update web_event_listing" do
    patch web_event_listing_url(@web_event_listing), params: { web_event_listing: { location_id: @web_event_listing.location_id, title: @web_event_listing.title } }
    assert_redirected_to web_event_listing_url(@web_event_listing)
  end

  test "should destroy web_event_listing" do
    assert_difference('Web::Event::Listing.count', -1) do
      delete web_event_listing_url(@web_event_listing)
    end

    assert_redirected_to web_event_listings_url
  end
end

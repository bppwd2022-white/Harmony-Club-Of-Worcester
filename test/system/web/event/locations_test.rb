require "application_system_test_case"

class Web::Event::LocationsTest < ApplicationSystemTestCase
  setup do
    @web_event_location = web_event_locations(:one)
  end

  test "visiting the index" do
    visit web_event_locations_url
    assert_selector "h1", text: "Web/Event/Locations"
  end

  test "creating a Location" do
    visit web_event_locations_url
    click_on "New Web/Event/Location"

    fill_in "Title", with: @web_event_location.title
    click_on "Create Location"

    assert_text "Location was successfully created"
    click_on "Back"
  end

  test "updating a Location" do
    visit web_event_locations_url
    click_on "Edit", match: :first

    fill_in "Title", with: @web_event_location.title
    click_on "Update Location"

    assert_text "Location was successfully updated"
    click_on "Back"
  end

  test "destroying a Location" do
    visit web_event_locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Location was successfully destroyed"
  end
end

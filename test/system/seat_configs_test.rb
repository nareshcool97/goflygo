require "application_system_test_case"

class SeatConfigsTest < ApplicationSystemTestCase
  setup do
    @seat_config = seat_configs(:one)
  end

  test "visiting the index" do
    visit seat_configs_url
    assert_selector "h1", text: "Seat Configs"
  end

  test "creating a Seat config" do
    visit seat_configs_url
    click_on "New Seat Config"

    fill_in "Category", with: @seat_config.category_id
    fill_in "Exceptions", with: @seat_config.exceptions
    fill_in "No of rows", with: @seat_config.no_of_rows
    fill_in "Seats per row", with: @seat_config.seats_per_row
    click_on "Create Seat config"

    assert_text "Seat config was successfully created"
    click_on "Back"
  end

  test "updating a Seat config" do
    visit seat_configs_url
    click_on "Edit", match: :first

    fill_in "Category", with: @seat_config.category_id
    fill_in "Exceptions", with: @seat_config.exceptions
    fill_in "No of rows", with: @seat_config.no_of_rows
    fill_in "Seats per row", with: @seat_config.seats_per_row
    click_on "Update Seat config"

    assert_text "Seat config was successfully updated"
    click_on "Back"
  end

  test "destroying a Seat config" do
    visit seat_configs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seat config was successfully destroyed"
  end
end

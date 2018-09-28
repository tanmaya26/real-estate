require "application_system_test_case"

class HouseRealtorsTest < ApplicationSystemTestCase
  setup do
    @house_realtor = house_realtors(:one)
  end

  test "visiting the index" do
    visit house_realtors_url
    assert_selector "h1", text: "House Realtors"
  end

  test "creating a House realtor" do
    visit house_realtors_url
    click_on "New House Realtor"

    fill_in "House", with: @house_realtor.house_id
    fill_in "User", with: @house_realtor.user_id
    click_on "Create House realtor"

    assert_text "House realtor was successfully created"
    click_on "Back"
  end

  test "updating a House realtor" do
    visit house_realtors_url
    click_on "Edit", match: :first

    fill_in "House", with: @house_realtor.house_id
    fill_in "User", with: @house_realtor.user_id
    click_on "Update House realtor"

    assert_text "House realtor was successfully updated"
    click_on "Back"
  end

  test "destroying a House realtor" do
    visit house_realtors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "House realtor was successfully destroyed"
  end
end

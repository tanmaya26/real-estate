require "application_system_test_case"

class HouseInterestListsTest < ApplicationSystemTestCase
  setup do
    @house_interest_list = house_interest_lists(:one)
  end

  test "visiting the index" do
    visit house_interest_lists_url
    assert_selector "h1", text: "House Interest Lists"
  end

  test "creating a House interest list" do
    visit house_interest_lists_url
    click_on "New House Interest List"

    fill_in "Company", with: @house_interest_list.company_id
    fill_in "House", with: @house_interest_list.house_id
    fill_in "User", with: @house_interest_list.user_id
    click_on "Create House interest list"

    assert_text "House interest list was successfully created"
    click_on "Back"
  end

  test "updating a House interest list" do
    visit house_interest_lists_url
    click_on "Edit", match: :first

    fill_in "Company", with: @house_interest_list.company_id
    fill_in "House", with: @house_interest_list.house_id
    fill_in "User", with: @house_interest_list.user_id
    click_on "Update House interest list"

    assert_text "House interest list was successfully updated"
    click_on "Back"
  end

  test "destroying a House interest list" do
    visit house_interest_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "House interest list was successfully destroyed"
  end
end

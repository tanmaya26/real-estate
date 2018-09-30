require "application_system_test_case"

class UserCompanyMappingsTest < ApplicationSystemTestCase
  setup do
    @user_company_mapping = user_company_mappings(:one)
  end

  test "visiting the index" do
    visit user_company_mappings_url
    assert_selector "h1", text: "User Company Mappings"
  end

  test "creating a User company mapping" do
    visit user_company_mappings_url
    click_on "New User Company Mapping"

    fill_in "Companies", with: @user_company_mapping.companies_id
    fill_in "Users", with: @user_company_mapping.users_id
    click_on "Create User company mapping"

    assert_text "User company mapping was successfully created"
    click_on "Back"
  end

  test "updating a User company mapping" do
    visit user_company_mappings_url
    click_on "Edit", match: :first

    fill_in "Companies", with: @user_company_mapping.companies_id
    fill_in "Users", with: @user_company_mapping.users_id
    click_on "Update User company mapping"

    assert_text "User company mapping was successfully updated"
    click_on "Back"
  end

  test "destroying a User company mapping" do
    visit user_company_mappings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User company mapping was successfully destroyed"
  end
end

require "application_system_test_case"

class CompanyHouseMappingsTest < ApplicationSystemTestCase
  setup do
    @company_house_mapping = company_house_mappings(:one)
  end

  test "visiting the index" do
    visit company_house_mappings_url
    assert_selector "h1", text: "Company House Mappings"
  end

  test "creating a Company house mapping" do
    visit company_house_mappings_url
    click_on "New Company House Mapping"

    fill_in "Company", with: @company_house_mapping.company_id
    fill_in "House", with: @company_house_mapping.house_id
    click_on "Create Company house mapping"

    assert_text "Company house mapping was successfully created"
    click_on "Back"
  end

  test "updating a Company house mapping" do
    visit company_house_mappings_url
    click_on "Edit", match: :first

    fill_in "Company", with: @company_house_mapping.company_id
    fill_in "House", with: @company_house_mapping.house_id
    click_on "Update Company house mapping"

    assert_text "Company house mapping was successfully updated"
    click_on "Back"
  end

  test "destroying a Company house mapping" do
    visit company_house_mappings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Company house mapping was successfully destroyed"
  end
end

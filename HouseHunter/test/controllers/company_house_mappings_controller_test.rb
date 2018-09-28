require 'test_helper'

class CompanyHouseMappingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company_house_mapping = company_house_mappings(:one)
  end

  test "should get index" do
    get company_house_mappings_url
    assert_response :success
  end

  test "should get new" do
    get new_company_house_mapping_url
    assert_response :success
  end

  test "should create company_house_mapping" do
    assert_difference('CompanyHouseMapping.count') do
      post company_house_mappings_url, params: { company_house_mapping: { company_id: @company_house_mapping.company_id, house_id: @company_house_mapping.house_id } }
    end

    assert_redirected_to company_house_mapping_url(CompanyHouseMapping.last)
  end

  test "should show company_house_mapping" do
    get company_house_mapping_url(@company_house_mapping)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_house_mapping_url(@company_house_mapping)
    assert_response :success
  end

  test "should update company_house_mapping" do
    patch company_house_mapping_url(@company_house_mapping), params: { company_house_mapping: { company_id: @company_house_mapping.company_id, house_id: @company_house_mapping.house_id } }
    assert_redirected_to company_house_mapping_url(@company_house_mapping)
  end

  test "should destroy company_house_mapping" do
    assert_difference('CompanyHouseMapping.count', -1) do
      delete company_house_mapping_url(@company_house_mapping)
    end

    assert_redirected_to company_house_mappings_url
  end
end

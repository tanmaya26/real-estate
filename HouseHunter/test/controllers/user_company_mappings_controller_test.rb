require 'test_helper'

class UserCompanyMappingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_company_mapping = user_company_mappings(:one)
  end

  test "should get index" do
    get user_company_mappings_url
    assert_response :success
  end

  test "should get new" do
    get new_user_company_mapping_url
    assert_response :success
  end

  test "should create user_company_mapping" do
    assert_difference('UserCompanyMapping.count') do
      post user_company_mappings_url, params: { user_company_mapping: { companies_id: @user_company_mapping.companies_id, users_id: @user_company_mapping.users_id } }
    end

    assert_redirected_to user_company_mapping_url(UserCompanyMapping.last)
  end

  test "should show user_company_mapping" do
    get user_company_mapping_url(@user_company_mapping)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_company_mapping_url(@user_company_mapping)
    assert_response :success
  end

  test "should update user_company_mapping" do
    patch user_company_mapping_url(@user_company_mapping), params: { user_company_mapping: { companies_id: @user_company_mapping.companies_id, users_id: @user_company_mapping.users_id } }
    assert_redirected_to user_company_mapping_url(@user_company_mapping)
  end

  test "should destroy user_company_mapping" do
    assert_difference('UserCompanyMapping.count', -1) do
      delete user_company_mapping_url(@user_company_mapping)
    end

    assert_redirected_to user_company_mappings_url
  end
end

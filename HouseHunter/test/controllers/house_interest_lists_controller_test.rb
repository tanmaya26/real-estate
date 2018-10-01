require 'test_helper'

class HouseInterestListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @house_interest_list = house_interest_lists(:one)
  end

  test "should get index" do
    get house_interest_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_house_interest_list_url
    assert_response :success
  end

  test "should create house_interest_list" do
    assert_difference('HouseInterestList.count') do
      post house_interest_lists_url, params: { house_interest_list: { company_id: @house_interest_list.company_id, house_id: @house_interest_list.house_id, user_id: @house_interest_list.user_id } }
    end

    assert_redirected_to house_interest_list_url(HouseInterestList.last)
  end

  test "should show house_interest_list" do
    get house_interest_list_url(@house_interest_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_house_interest_list_url(@house_interest_list)
    assert_response :success
  end

  test "should update house_interest_list" do
    patch house_interest_list_url(@house_interest_list), params: { house_interest_list: { company_id: @house_interest_list.company_id, house_id: @house_interest_list.house_id, user_id: @house_interest_list.user_id } }
    assert_redirected_to house_interest_list_url(@house_interest_list)
  end

  test "should destroy house_interest_list" do
    assert_difference('HouseInterestList.count', -1) do
      delete house_interest_list_url(@house_interest_list)
    end

    assert_redirected_to house_interest_lists_url
  end
end

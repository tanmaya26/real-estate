require 'test_helper'

class HouseRealtorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @house_realtor = house_realtors(:one)
  end

  test "should get index" do
    get house_realtors_url
    assert_response :success
  end

  test "should get new" do
    get new_house_realtor_url
    assert_response :success
  end

  test "should create house_realtor" do
    assert_difference('HouseRealtor.count') do
      post house_realtors_url, params: { house_realtor: { house_id: @house_realtor.house_id, user_id: @house_realtor.user_id } }
    end

    assert_redirected_to house_realtor_url(HouseRealtor.last)
  end

  test "should show house_realtor" do
    get house_realtor_url(@house_realtor)
    assert_response :success
  end

  test "should get edit" do
    get edit_house_realtor_url(@house_realtor)
    assert_response :success
  end

  test "should update house_realtor" do
    patch house_realtor_url(@house_realtor), params: { house_realtor: { house_id: @house_realtor.house_id, user_id: @house_realtor.user_id } }
    assert_redirected_to house_realtor_url(@house_realtor)
  end

  test "should destroy house_realtor" do
    assert_difference('HouseRealtor.count', -1) do
      delete house_realtor_url(@house_realtor)
    end

    assert_redirected_to house_realtors_url
  end
end

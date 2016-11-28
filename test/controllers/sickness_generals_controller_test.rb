require 'test_helper'

class SicknessGeneralsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sickness_general = sickness_generals(:one)
  end

  test "should get index" do
    get sickness_generals_url
    assert_response :success
  end

  test "should get new" do
    get new_sickness_general_url
    assert_response :success
  end

  test "should create sickness_general" do
    assert_difference('SicknessGeneral.count') do
      post sickness_generals_url, params: { sickness_general: { name: @sickness_general.name } }
    end

    assert_redirected_to sickness_general_url(SicknessGeneral.last)
  end

  test "should show sickness_general" do
    get sickness_general_url(@sickness_general)
    assert_response :success
  end

  test "should get edit" do
    get edit_sickness_general_url(@sickness_general)
    assert_response :success
  end

  test "should update sickness_general" do
    patch sickness_general_url(@sickness_general), params: { sickness_general: { name: @sickness_general.name } }
    assert_redirected_to sickness_general_url(@sickness_general)
  end

  test "should destroy sickness_general" do
    assert_difference('SicknessGeneral.count', -1) do
      delete sickness_general_url(@sickness_general)
    end

    assert_redirected_to sickness_generals_url
  end
end

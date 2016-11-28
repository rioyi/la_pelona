require 'test_helper'

class SicknessSpecificsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sickness_specific = sickness_specifics(:one)
  end

  test "should get index" do
    get sickness_specifics_url
    assert_response :success
  end

  test "should get new" do
    get new_sickness_specific_url
    assert_response :success
  end

  test "should create sickness_specific" do
    assert_difference('SicknessSpecific.count') do
      post sickness_specifics_url, params: { sickness_specific: { cod: @sickness_specific.cod, name: @sickness_specific.name, sickness_general_id: @sickness_specific.sickness_general_id } }
    end

    assert_redirected_to sickness_specific_url(SicknessSpecific.last)
  end

  test "should show sickness_specific" do
    get sickness_specific_url(@sickness_specific)
    assert_response :success
  end

  test "should get edit" do
    get edit_sickness_specific_url(@sickness_specific)
    assert_response :success
  end

  test "should update sickness_specific" do
    patch sickness_specific_url(@sickness_specific), params: { sickness_specific: { cod: @sickness_specific.cod, name: @sickness_specific.name, sickness_general_id: @sickness_specific.sickness_general_id } }
    assert_redirected_to sickness_specific_url(@sickness_specific)
  end

  test "should destroy sickness_specific" do
    assert_difference('SicknessSpecific.count', -1) do
      delete sickness_specific_url(@sickness_specific)
    end

    assert_redirected_to sickness_specifics_url
  end
end

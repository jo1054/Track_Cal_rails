require 'test_helper'

class HeatsheetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @heatsheet = heatsheets(:one)
  end

  test "should get index" do
    get heatsheets_url
    assert_response :success
  end

  test "should get new" do
    get new_heatsheet_url
    assert_response :success
  end

  test "should create heatsheet" do
    assert_difference('Heatsheet.count') do
      post heatsheets_url, params: { heatsheet: { entry_mark: @heatsheet.entry_mark, first_name: @heatsheet.first_name, last_name: @heatsheet.last_name, school_club: @heatsheet.school_club } }
    end

    assert_redirected_to heatsheet_url(Heatsheet.last)
  end

  test "should show heatsheet" do
    get heatsheet_url(@heatsheet)
    assert_response :success
  end

  test "should get edit" do
    get edit_heatsheet_url(@heatsheet)
    assert_response :success
  end

  test "should update heatsheet" do
    patch heatsheet_url(@heatsheet), params: { heatsheet: { entry_mark: @heatsheet.entry_mark, first_name: @heatsheet.first_name, last_name: @heatsheet.last_name, school_club: @heatsheet.school_club } }
    assert_redirected_to heatsheet_url(@heatsheet)
  end

  test "should destroy heatsheet" do
    assert_difference('Heatsheet.count', -1) do
      delete heatsheet_url(@heatsheet)
    end

    assert_redirected_to heatsheets_url
  end
end

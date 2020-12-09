require 'test_helper'

class IcdcodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @icdcode = icdcodes(:one)
  end

  test "should get index" do
    get icdcodes_url
    assert_response :success
  end

  test "should get new" do
    get new_icdcode_url
    assert_response :success
  end

  test "should create icdcode" do
    assert_difference('Icdcode.count') do
      post icdcodes_url, params: { icdcode: { FULL_CODE: @icdcode.FULL_CODE, abbreviated_description: @icdcode.abbreviated_description, category_code: @icdcode.category_code, category_title: @icdcode.category_title, diagnosis_code: @icdcode.diagnosis_code, full_description: @icdcode.full_description } }
    end

    assert_redirected_to icdcode_url(Icdcode.last)
  end

  test "should show icdcode" do
    get icdcode_url(@icdcode)
    assert_response :success
  end

  test "should get edit" do
    get edit_icdcode_url(@icdcode)
    assert_response :success
  end

  test "should update icdcode" do
    patch icdcode_url(@icdcode), params: { icdcode: { FULL_CODE: @icdcode.FULL_CODE, abbreviated_description: @icdcode.abbreviated_description, category_code: @icdcode.category_code, category_title: @icdcode.category_title, diagnosis_code: @icdcode.diagnosis_code, full_description: @icdcode.full_description } }
    assert_redirected_to icdcode_url(@icdcode)
  end

  test "should destroy icdcode" do
    assert_difference('Icdcode.count', -1) do
      delete icdcode_url(@icdcode)
    end

    assert_redirected_to icdcodes_url
  end
end

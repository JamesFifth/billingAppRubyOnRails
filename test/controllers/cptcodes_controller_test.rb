require 'test_helper'

class CptcodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cptcode = cptcodes(:one)
  end

  test "should get index" do
    get cptcodes_url
    assert_response :success
  end

  test "should get new" do
    get new_cptcode_url
    assert_response :success
  end

  test "should create cptcode" do
    assert_difference('Cptcode.count') do
      post cptcodes_url, params: { cptcode: { cpt_code: @cptcode.cpt_code, cpt_description: @cptcode.cpt_description, cpt_price: @cptcode.cpt_price } }
    end

    assert_redirected_to cptcode_url(Cptcode.last)
  end

  test "should show cptcode" do
    get cptcode_url(@cptcode)
    assert_response :success
  end

  test "should get edit" do
    get edit_cptcode_url(@cptcode)
    assert_response :success
  end

  test "should update cptcode" do
    patch cptcode_url(@cptcode), params: { cptcode: { cpt_code: @cptcode.cpt_code, cpt_description: @cptcode.cpt_description, cpt_price: @cptcode.cpt_price } }
    assert_redirected_to cptcode_url(@cptcode)
  end

  test "should destroy cptcode" do
    assert_difference('Cptcode.count', -1) do
      delete cptcode_url(@cptcode)
    end

    assert_redirected_to cptcodes_url
  end
end

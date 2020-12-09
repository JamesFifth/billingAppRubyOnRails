require 'test_helper'

class SuperbillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @superbill = superbills(:one)
  end

  test "should get index" do
    get superbills_url
    assert_response :success
  end

  test "should get new" do
    get new_superbill_url
    assert_response :success
  end

  test "should create superbill" do
    assert_difference('Superbill.count') do
      post superbills_url, params: { superbill: { patient_id: @superbill.patient_id, superbill_id: @superbill.superbill_id } }
    end

    assert_redirected_to superbill_url(Superbill.last)
  end

  test "should show superbill" do
    get superbill_url(@superbill)
    assert_response :success
  end

  test "should get edit" do
    get edit_superbill_url(@superbill)
    assert_response :success
  end

  test "should update superbill" do
    patch superbill_url(@superbill), params: { superbill: { patient_id: @superbill.patient_id, superbill_id: @superbill.superbill_id } }
    assert_redirected_to superbill_url(@superbill)
  end

  test "should destroy superbill" do
    assert_difference('Superbill.count', -1) do
      delete superbill_url(@superbill)
    end

    assert_redirected_to superbills_url
  end
end

require 'test_helper'

class InsurancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insurance = insurances(:one)
  end

  test "should get index" do
    get insurances_url
    assert_response :success
  end

  test "should get new" do
    get new_insurance_url
    assert_response :success
  end

  test "should create insurance" do
    assert_difference('Insurance.count') do
      post insurances_url, params: { insurance: { insurance_company_address: @insurance.insurance_company_address, insurance_company_email: @insurance.insurance_company_email, insurance_company_name: @insurance.insurance_company_name, insurance_company_phone: @insurance.insurance_company_phone, insurance_company_website: @insurance.insurance_company_website, insurance_copay_rate: @insurance.insurance_copay_rate, insurance_deductible: @insurance.insurance_deductible, insurance_end_date: @insurance.insurance_end_date, insurance_id: @insurance.insurance_id, insurance_limitation: @insurance.insurance_limitation, insurance_start_date: @insurance.insurance_start_date, insured_birth: @insurance.insured_birth, insured_name: @insurance.insured_name, insured_ssn: @insurance.insured_ssn } }
    end

    assert_redirected_to insurance_url(Insurance.last)
  end

  test "should show insurance" do
    get insurance_url(@insurance)
    assert_response :success
  end

  test "should get edit" do
    get edit_insurance_url(@insurance)
    assert_response :success
  end

  test "should update insurance" do
    patch insurance_url(@insurance), params: { insurance: { insurance_company_address: @insurance.insurance_company_address, insurance_company_email: @insurance.insurance_company_email, insurance_company_name: @insurance.insurance_company_name, insurance_company_phone: @insurance.insurance_company_phone, insurance_company_website: @insurance.insurance_company_website, insurance_copay_rate: @insurance.insurance_copay_rate, insurance_deductible: @insurance.insurance_deductible, insurance_end_date: @insurance.insurance_end_date, insurance_id: @insurance.insurance_id, insurance_limitation: @insurance.insurance_limitation, insurance_start_date: @insurance.insurance_start_date, insured_birth: @insurance.insured_birth, insured_name: @insurance.insured_name, insured_ssn: @insurance.insured_ssn } }
    assert_redirected_to insurance_url(@insurance)
  end

  test "should destroy insurance" do
    assert_difference('Insurance.count', -1) do
      delete insurance_url(@insurance)
    end

    assert_redirected_to insurances_url
  end
end

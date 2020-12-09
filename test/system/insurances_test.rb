require "application_system_test_case"

class InsurancesTest < ApplicationSystemTestCase
  setup do
    @insurance = insurances(:one)
  end

  test "visiting the index" do
    visit insurances_url
    assert_selector "h1", text: "Insurances"
  end

  test "creating a Insurance" do
    visit insurances_url
    click_on "New Insurance"

    fill_in "Insurance company address", with: @insurance.insurance_company_address
    fill_in "Insurance company email", with: @insurance.insurance_company_email
    fill_in "Insurance company name", with: @insurance.insurance_company_name
    fill_in "Insurance company phone", with: @insurance.insurance_company_phone
    fill_in "Insurance company website", with: @insurance.insurance_company_website
    fill_in "Insurance copay rate", with: @insurance.insurance_copay_rate
    fill_in "Insurance deductible", with: @insurance.insurance_deductible
    fill_in "Insurance end date", with: @insurance.insurance_end_date
    fill_in "Insurance", with: @insurance.insurance_id
    fill_in "Insurance limitation", with: @insurance.insurance_limitation
    fill_in "Insurance start date", with: @insurance.insurance_start_date
    fill_in "Insured birth", with: @insurance.insured_birth
    fill_in "Insured name", with: @insurance.insured_name
    fill_in "Insured ssn", with: @insurance.insured_ssn
    click_on "Create Insurance"

    assert_text "Insurance was successfully created"
    click_on "Back"
  end

  test "updating a Insurance" do
    visit insurances_url
    click_on "Edit", match: :first

    fill_in "Insurance company address", with: @insurance.insurance_company_address
    fill_in "Insurance company email", with: @insurance.insurance_company_email
    fill_in "Insurance company name", with: @insurance.insurance_company_name
    fill_in "Insurance company phone", with: @insurance.insurance_company_phone
    fill_in "Insurance company website", with: @insurance.insurance_company_website
    fill_in "Insurance copay rate", with: @insurance.insurance_copay_rate
    fill_in "Insurance deductible", with: @insurance.insurance_deductible
    fill_in "Insurance end date", with: @insurance.insurance_end_date
    fill_in "Insurance", with: @insurance.insurance_id
    fill_in "Insurance limitation", with: @insurance.insurance_limitation
    fill_in "Insurance start date", with: @insurance.insurance_start_date
    fill_in "Insured birth", with: @insurance.insured_birth
    fill_in "Insured name", with: @insurance.insured_name
    fill_in "Insured ssn", with: @insurance.insured_ssn
    click_on "Update Insurance"

    assert_text "Insurance was successfully updated"
    click_on "Back"
  end

  test "destroying a Insurance" do
    visit insurances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Insurance was successfully destroyed"
  end
end

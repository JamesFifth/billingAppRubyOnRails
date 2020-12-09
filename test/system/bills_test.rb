require "application_system_test_case"

class BillsTest < ApplicationSystemTestCase
  setup do
    @bill = bills(:one)
  end

  test "visiting the index" do
    visit bills_url
    assert_selector "h1", text: "Bills"
  end

  test "creating a Bill" do
    visit bills_url
    click_on "New Bill"

    fill_in "Bill date", with: @bill.bill_date
    fill_in "Bill", with: @bill.bill_id
    fill_in "Diagnosis code", with: @bill.diagnosis_code
    fill_in "Insurrance", with: @bill.insurrance_id
    check "Is paid" if @bill.is_paid
    fill_in "Patient", with: @bill.patient_id
    fill_in "Total price", with: @bill.total_price
    click_on "Create Bill"

    assert_text "Bill was successfully created"
    click_on "Back"
  end

  test "updating a Bill" do
    visit bills_url
    click_on "Edit", match: :first

    fill_in "Bill date", with: @bill.bill_date
    fill_in "Bill", with: @bill.bill_id
    fill_in "Diagnosis code", with: @bill.diagnosis_code
    fill_in "Insurrance", with: @bill.insurrance_id
    check "Is paid" if @bill.is_paid
    fill_in "Patient", with: @bill.patient_id
    fill_in "Total price", with: @bill.total_price
    click_on "Update Bill"

    assert_text "Bill was successfully updated"
    click_on "Back"
  end

  test "destroying a Bill" do
    visit bills_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bill was successfully destroyed"
  end
end

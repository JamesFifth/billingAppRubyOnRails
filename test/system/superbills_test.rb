require "application_system_test_case"

class SuperbillsTest < ApplicationSystemTestCase
  setup do
    @superbill = superbills(:one)
  end

  test "visiting the index" do
    visit superbills_url
    assert_selector "h1", text: "Superbills"
  end

  test "creating a Superbill" do
    visit superbills_url
    click_on "New Superbill"

    fill_in "Patient", with: @superbill.patient_id
    fill_in "Superbill", with: @superbill.superbill_id
    click_on "Create Superbill"

    assert_text "Superbill was successfully created"
    click_on "Back"
  end

  test "updating a Superbill" do
    visit superbills_url
    click_on "Edit", match: :first

    fill_in "Patient", with: @superbill.patient_id
    fill_in "Superbill", with: @superbill.superbill_id
    click_on "Update Superbill"

    assert_text "Superbill was successfully updated"
    click_on "Back"
  end

  test "destroying a Superbill" do
    visit superbills_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Superbill was successfully destroyed"
  end
end

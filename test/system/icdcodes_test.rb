require "application_system_test_case"

class IcdcodesTest < ApplicationSystemTestCase
  setup do
    @icdcode = icdcodes(:one)
  end

  test "visiting the index" do
    visit icdcodes_url
    assert_selector "h1", text: "Icdcodes"
  end

  test "creating a Icdcode" do
    visit icdcodes_url
    click_on "New Icdcode"

    fill_in "Full code", with: @icdcode.FULL_CODE
    fill_in "Abbreviated description", with: @icdcode.abbreviated_description
    fill_in "Category code", with: @icdcode.category_code
    fill_in "Category title", with: @icdcode.category_title
    fill_in "Diagnosis code", with: @icdcode.diagnosis_code
    fill_in "Full description", with: @icdcode.full_description
    click_on "Create Icdcode"

    assert_text "Icdcode was successfully created"
    click_on "Back"
  end

  test "updating a Icdcode" do
    visit icdcodes_url
    click_on "Edit", match: :first

    fill_in "Full code", with: @icdcode.FULL_CODE
    fill_in "Abbreviated description", with: @icdcode.abbreviated_description
    fill_in "Category code", with: @icdcode.category_code
    fill_in "Category title", with: @icdcode.category_title
    fill_in "Diagnosis code", with: @icdcode.diagnosis_code
    fill_in "Full description", with: @icdcode.full_description
    click_on "Update Icdcode"

    assert_text "Icdcode was successfully updated"
    click_on "Back"
  end

  test "destroying a Icdcode" do
    visit icdcodes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Icdcode was successfully destroyed"
  end
end

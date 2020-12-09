require "application_system_test_case"

class CptcodesTest < ApplicationSystemTestCase
  setup do
    @cptcode = cptcodes(:one)
  end

  test "visiting the index" do
    visit cptcodes_url
    assert_selector "h1", text: "Cptcodes"
  end

  test "creating a Cptcode" do
    visit cptcodes_url
    click_on "New Cptcode"

    fill_in "Cpt code", with: @cptcode.cpt_code
    fill_in "Cpt description", with: @cptcode.cpt_description
    fill_in "Cpt price", with: @cptcode.cpt_price
    click_on "Create Cptcode"

    assert_text "Cptcode was successfully created"
    click_on "Back"
  end

  test "updating a Cptcode" do
    visit cptcodes_url
    click_on "Edit", match: :first

    fill_in "Cpt code", with: @cptcode.cpt_code
    fill_in "Cpt description", with: @cptcode.cpt_description
    fill_in "Cpt price", with: @cptcode.cpt_price
    click_on "Update Cptcode"

    assert_text "Cptcode was successfully updated"
    click_on "Back"
  end

  test "destroying a Cptcode" do
    visit cptcodes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cptcode was successfully destroyed"
  end
end

require "application_system_test_case"

class PatientsTest < ApplicationSystemTestCase
  setup do
    @patient = patients(:one)
  end

  test "visiting the index" do
    visit patients_url
    assert_selector "h1", text: "Patients"
  end

  test "creating a Patient" do
    visit patients_url
    click_on "New Patient"

    fill_in "Address line 1", with: @patient.address_line_1
    fill_in "Address line 2", with: @patient.address_line_2
    fill_in "City", with: @patient.city
    fill_in "Date of birth", with: @patient.date_of_birth
    fill_in "Email", with: @patient.email
    fill_in "Fname", with: @patient.fname
    fill_in "Gender", with: @patient.gender
    fill_in "Lname", with: @patient.lname
    fill_in "Mname", with: @patient.mname
    fill_in "Phone", with: @patient.phone
    fill_in "Ssn", with: @patient.ssn
    fill_in "State", with: @patient.state
    fill_in "Zip", with: @patient.zip
    click_on "Create Patient"

    assert_text "Patient was successfully created"
    click_on "Back"
  end

  test "updating a Patient" do
    visit patients_url
    click_on "Edit", match: :first

    fill_in "Address line 1", with: @patient.address_line_1
    fill_in "Address line 2", with: @patient.address_line_2
    fill_in "City", with: @patient.city
    fill_in "Date of birth", with: @patient.date_of_birth
    fill_in "Email", with: @patient.email
    fill_in "Fname", with: @patient.fname
    fill_in "Gender", with: @patient.gender
    fill_in "Lname", with: @patient.lname
    fill_in "Mname", with: @patient.mname
    fill_in "Phone", with: @patient.phone
    fill_in "Ssn", with: @patient.ssn
    fill_in "State", with: @patient.state
    fill_in "Zip", with: @patient.zip
    click_on "Update Patient"

    assert_text "Patient was successfully updated"
    click_on "Back"
  end

  test "destroying a Patient" do
    visit patients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Patient was successfully destroyed"
  end
end

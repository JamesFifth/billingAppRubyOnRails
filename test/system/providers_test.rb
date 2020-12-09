require "application_system_test_case"

class ProvidersTest < ApplicationSystemTestCase
  setup do
    @provider = providers(:one)
  end

  test "visiting the index" do
    visit providers_url
    assert_selector "h1", text: "Providers"
  end

  test "creating a Provider" do
    visit providers_url
    click_on "New Provider"

    fill_in "Npi", with: @provider.NPI
    fill_in "Phone", with: @provider.phone
    fill_in "Provider address", with: @provider.provider_address
    fill_in "Provider email", with: @provider.provider_email
    fill_in "Provider licence", with: @provider.provider_licence
    fill_in "Provider name", with: @provider.provider_name
    fill_in "Tax", with: @provider.tax_id
    click_on "Create Provider"

    assert_text "Provider was successfully created"
    click_on "Back"
  end

  test "updating a Provider" do
    visit providers_url
    click_on "Edit", match: :first

    fill_in "Npi", with: @provider.NPI
    fill_in "Phone", with: @provider.phone
    fill_in "Provider address", with: @provider.provider_address
    fill_in "Provider email", with: @provider.provider_email
    fill_in "Provider licence", with: @provider.provider_licence
    fill_in "Provider name", with: @provider.provider_name
    fill_in "Tax", with: @provider.tax_id
    click_on "Update Provider"

    assert_text "Provider was successfully updated"
    click_on "Back"
  end

  test "destroying a Provider" do
    visit providers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Provider was successfully destroyed"
  end
end

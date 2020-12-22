require "application_system_test_case"

class StakeholdersTest < ApplicationSystemTestCase
  setup do
    @stakeholder = stakeholders(:one)
  end

  test "visiting the index" do
    visit stakeholders_url
    assert_selector "h1", text: "Stakeholders"
  end

  test "creating a Stakeholder" do
    visit stakeholders_url
    click_on "New Stakeholder"

    fill_in "Birthday at", with: @stakeholder.birthday_at
    fill_in "From", with: @stakeholder.from
    fill_in "Height", with: @stakeholder.height
    fill_in "Images", with: @stakeholder.images
    fill_in "Introduce", with: @stakeholder.introduce
    fill_in "Name alias", with: @stakeholder.name_alias
    fill_in "Real name", with: @stakeholder.real_name
    click_on "Create Stakeholder"

    assert_text "Stakeholder was successfully created"
    click_on "Back"
  end

  test "updating a Stakeholder" do
    visit stakeholders_url
    click_on "Edit", match: :first

    fill_in "Birthday at", with: @stakeholder.birthday_at
    fill_in "From", with: @stakeholder.from
    fill_in "Height", with: @stakeholder.height
    fill_in "Images", with: @stakeholder.images
    fill_in "Introduce", with: @stakeholder.introduce
    fill_in "Name alias", with: @stakeholder.name_alias
    fill_in "Real name", with: @stakeholder.real_name
    click_on "Update Stakeholder"

    assert_text "Stakeholder was successfully updated"
    click_on "Back"
  end

  test "destroying a Stakeholder" do
    visit stakeholders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stakeholder was successfully destroyed"
  end
end

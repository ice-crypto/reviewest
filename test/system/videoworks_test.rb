require "application_system_test_case"

class VideoworksTest < ApplicationSystemTestCase
  setup do
    @videowork = videoworks(:one)
  end

  test "visiting the index" do
    visit videoworks_url
    assert_selector "h1", text: "Videoworks"
  end

  test "creating a Videowork" do
    visit videoworks_url
    click_on "New Videowork"

    fill_in "Casts", with: @videowork.casts
    fill_in "Directors", with: @videowork.directors
    fill_in "Screening at", with: @videowork.screening_at
    fill_in "Screening on", with: @videowork.screening_on
    fill_in "Screenplaies", with: @videowork.screenplaies
    fill_in "Summary", with: @videowork.summary
    fill_in "Title", with: @videowork.title
    click_on "Create Videowork"

    assert_text "Videowork was successfully created"
    click_on "Back"
  end

  test "updating a Videowork" do
    visit videoworks_url
    click_on "Edit", match: :first

    fill_in "Casts", with: @videowork.casts
    fill_in "Directors", with: @videowork.directors
    fill_in "Screening at", with: @videowork.screening_at
    fill_in "Screening on", with: @videowork.screening_on
    fill_in "Screenplaies", with: @videowork.screenplaies
    fill_in "Summary", with: @videowork.summary
    fill_in "Title", with: @videowork.title
    click_on "Update Videowork"

    assert_text "Videowork was successfully updated"
    click_on "Back"
  end

  test "destroying a Videowork" do
    visit videoworks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Videowork was successfully destroyed"
  end
end

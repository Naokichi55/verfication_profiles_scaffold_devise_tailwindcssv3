require "application_system_test_case"

class RacketsTest < ApplicationSystemTestCase
  setup do
    @racket = rackets(:one)
  end

  test "visiting the index" do
    visit rackets_url
    assert_selector "h1", text: "Rackets"
  end

  test "should create racket" do
    visit rackets_url
    click_on "New racket"

    fill_in "Title", with: @racket.title
    click_on "Create Racket"

    assert_text "Racket was successfully created"
    click_on "Back"
  end

  test "should update Racket" do
    visit racket_url(@racket)
    click_on "Edit this racket", match: :first

    fill_in "Title", with: @racket.title
    click_on "Update Racket"

    assert_text "Racket was successfully updated"
    click_on "Back"
  end

  test "should destroy Racket" do
    visit racket_url(@racket)
    click_on "Destroy this racket", match: :first

    assert_text "Racket was successfully destroyed"
  end
end

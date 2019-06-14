require "application_system_test_case"

class FeesStructuresTest < ApplicationSystemTestCase
  setup do
    @fees_structure = fees_structures(:one)
  end

  test "visiting the index" do
    visit fees_structures_url
    assert_selector "h1", text: "Fees Structures"
  end

  test "creating a Fees structure" do
    visit fees_structures_url
    click_on "New Fees Structure"

    fill_in "Feesinfo", with: @fees_structure.feesinfo
    fill_in "Program", with: @fees_structure.program
    fill_in "Session", with: @fees_structure.session
    fill_in "Year", with: @fees_structure.year
    click_on "Create Fees structure"

    assert_text "Fees structure was successfully created"
    click_on "Back"
  end

  test "updating a Fees structure" do
    visit fees_structures_url
    click_on "Edit", match: :first

    fill_in "Feesinfo", with: @fees_structure.feesinfo
    fill_in "Program", with: @fees_structure.program
    fill_in "Session", with: @fees_structure.session
    fill_in "Year", with: @fees_structure.year
    click_on "Update Fees structure"

    assert_text "Fees structure was successfully updated"
    click_on "Back"
  end

  test "destroying a Fees structure" do
    visit fees_structures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fees structure was successfully destroyed"
  end
end

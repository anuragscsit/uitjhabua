require "application_system_test_case"

class FacultiesTest < ApplicationSystemTestCase
  setup do
    @faculty = faculties(:one)
  end

  test "visiting the index" do
    visit faculties_url
    assert_selector "h1", text: "Faculties"
  end

  test "creating a Faculty" do
    visit faculties_url
    click_on "New Faculty"

    fill_in "Experience", with: @faculty.Experience
    fill_in "Contact", with: @faculty.contact
    fill_in "Department", with: @faculty.department
    fill_in "Email", with: @faculty.email
    fill_in "Name", with: @faculty.name
    fill_in "Qualification", with: @faculty.qualification
    fill_in "Specialization", with: @faculty.specialization
    click_on "Create Faculty"

    assert_text "Faculty was successfully created"
    click_on "Back"
  end

  test "updating a Faculty" do
    visit faculties_url
    click_on "Edit", match: :first

    fill_in "Experience", with: @faculty.Experience
    fill_in "Contact", with: @faculty.contact
    fill_in "Department", with: @faculty.department
    fill_in "Email", with: @faculty.email
    fill_in "Name", with: @faculty.name
    fill_in "Qualification", with: @faculty.qualification
    fill_in "Specialization", with: @faculty.specialization
    click_on "Update Faculty"

    assert_text "Faculty was successfully updated"
    click_on "Back"
  end

  test "destroying a Faculty" do
    visit faculties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Faculty was successfully destroyed"
  end
end
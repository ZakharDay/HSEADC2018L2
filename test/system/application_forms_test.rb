require "application_system_test_case"

class ApplicationFormsTest < ApplicationSystemTestCase
  setup do
    @application_form = application_forms(:one)
  end

  test "visiting the index" do
    visit application_forms_url
    assert_selector "h1", text: "Application Forms"
  end

  test "creating a Application form" do
    visit application_forms_url
    click_on "New Application Form"

    fill_in "About", with: @application_form.about
    fill_in "Age", with: @application_form.age
    fill_in "Email", with: @application_form.email
    fill_in "Name", with: @application_form.name
    fill_in "Phone", with: @application_form.phone
    fill_in "Post", with: @application_form.post_id
    fill_in "Project description", with: @application_form.project_description
    fill_in "Project title", with: @application_form.project_title
    click_on "Create Application form"

    assert_text "Application form was successfully created"
    click_on "Back"
  end

  test "updating a Application form" do
    visit application_forms_url
    click_on "Edit", match: :first

    fill_in "About", with: @application_form.about
    fill_in "Age", with: @application_form.age
    fill_in "Email", with: @application_form.email
    fill_in "Name", with: @application_form.name
    fill_in "Phone", with: @application_form.phone
    fill_in "Post", with: @application_form.post_id
    fill_in "Project description", with: @application_form.project_description
    fill_in "Project title", with: @application_form.project_title
    click_on "Update Application form"

    assert_text "Application form was successfully updated"
    click_on "Back"
  end

  test "destroying a Application form" do
    visit application_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Application form was successfully destroyed"
  end
end

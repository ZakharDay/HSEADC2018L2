require "application_system_test_case"

class ApplicationSettingsTest < ApplicationSystemTestCase
  setup do
    @application_setting = application_settings(:one)
  end

  test "visiting the index" do
    visit application_settings_url
    assert_selector "h1", text: "Application Settings"
  end

  test "creating a Application setting" do
    visit application_settings_url
    click_on "New Application Setting"

    check "About" if @application_setting.about
    check "Age" if @application_setting.age
    check "Email" if @application_setting.email
    check "Name" if @application_setting.name
    check "Phone" if @application_setting.phone
    check "Project description" if @application_setting.project_description
    check "Project title" if @application_setting.project_title
    click_on "Create Application setting"

    assert_text "Application setting was successfully created"
    click_on "Back"
  end

  test "updating a Application setting" do
    visit application_settings_url
    click_on "Edit", match: :first

    check "About" if @application_setting.about
    check "Age" if @application_setting.age
    check "Email" if @application_setting.email
    check "Name" if @application_setting.name
    check "Phone" if @application_setting.phone
    check "Project description" if @application_setting.project_description
    check "Project title" if @application_setting.project_title
    click_on "Update Application setting"

    assert_text "Application setting was successfully updated"
    click_on "Back"
  end

  test "destroying a Application setting" do
    visit application_settings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Application setting was successfully destroyed"
  end
end

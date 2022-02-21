require "application_system_test_case"

class BootstrapsTest < ApplicationSystemTestCase
  setup do
    @bootstrap = bootstraps(:one)
  end

  test "visiting the index" do
    visit bootstraps_url
    assert_selector "h1", text: "Bootstraps"
  end

  test "creating a Bootstrap" do
    visit bootstraps_url
    click_on "New Bootstrap"

    fill_in "Title", with: @bootstrap.title
    click_on "Create Bootstrap"

    assert_text "Bootstrap was successfully created"
    click_on "Back"
  end

  test "updating a Bootstrap" do
    visit bootstraps_url
    click_on "Edit", match: :first

    fill_in "Title", with: @bootstrap.title
    click_on "Update Bootstrap"

    assert_text "Bootstrap was successfully updated"
    click_on "Back"
  end

  test "destroying a Bootstrap" do
    visit bootstraps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bootstrap was successfully destroyed"
  end
end

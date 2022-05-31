require "application_system_test_case"

class MediaTest < ApplicationSystemTestCase
  setup do
    @medium = media(:one)
  end

  test "visiting the index" do
    visit media_url
    assert_selector "h1", text: "Media"
  end

  test "should create medium" do
    visit media_url
    click_on "New medium"

    fill_in "Icon path", with: @medium.icon_path
    fill_in "Logo path", with: @medium.logo_path
    fill_in "Name", with: @medium.name
    fill_in "Rss url", with: @medium.rss_url
    fill_in "Top url", with: @medium.top_url
    click_on "Create Medium"

    assert_text "Medium was successfully created"
    click_on "Back"
  end

  test "should update Medium" do
    visit medium_url(@medium)
    click_on "Edit this medium", match: :first

    fill_in "Icon path", with: @medium.icon_path
    fill_in "Logo path", with: @medium.logo_path
    fill_in "Name", with: @medium.name
    fill_in "Rss url", with: @medium.rss_url
    fill_in "Top url", with: @medium.top_url
    click_on "Update Medium"

    assert_text "Medium was successfully updated"
    click_on "Back"
  end

  test "should destroy Medium" do
    visit medium_url(@medium)
    click_on "Destroy this medium", match: :first

    assert_text "Medium was successfully destroyed"
  end
end

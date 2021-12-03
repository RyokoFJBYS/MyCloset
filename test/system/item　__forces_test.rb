require "application_system_test_case"

class Item　ForcesTest < ApplicationSystemTestCase
  setup do
    @item　__force = item　__forces(:one)
  end

  test "visiting the index" do
    visit item　__forces_url
    assert_selector "h1", text: "Item　Forces"
  end

  test "creating a Item　  force" do
    visit item　__forces_url
    click_on "New Item　Force"

    click_on "Create Item　  force"

    assert_text "Item　  force was successfully created"
    click_on "Back"
  end

  test "updating a Item　  force" do
    visit item　__forces_url
    click_on "Edit", match: :first

    click_on "Update Item　  force"

    assert_text "Item　  force was successfully updated"
    click_on "Back"
  end

  test "destroying a Item　  force" do
    visit item　__forces_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item　  force was successfully destroyed"
  end
end

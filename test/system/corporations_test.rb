require "application_system_test_case"

class CorporationsTest < ApplicationSystemTestCase
  setup do
    @corporation = corporations(:one)
  end

  test "visiting the index" do
    visit corporations_url
    assert_selector "h1", text: "Corporations"
  end

  test "creating a Corporation" do
    visit corporations_url
    click_on "New Corporation"

    fill_in "Name", with: @corporation.name
    fill_in "Rut", with: @corporation.rut
    fill_in "Surcursal", with: @corporation.surcursal_id
    click_on "Create Corporation"

    assert_text "Corporation was successfully created"
    click_on "Back"
  end

  test "updating a Corporation" do
    visit corporations_url
    click_on "Edit", match: :first

    fill_in "Name", with: @corporation.name
    fill_in "Rut", with: @corporation.rut
    fill_in "Surcursal", with: @corporation.surcursal_id
    click_on "Update Corporation"

    assert_text "Corporation was successfully updated"
    click_on "Back"
  end

  test "destroying a Corporation" do
    visit corporations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Corporation was successfully destroyed"
  end
end

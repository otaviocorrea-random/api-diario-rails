require "application_system_test_case"

class AprendizadosTest < ApplicationSystemTestCase
  setup do
    @aprendizado = aprendizados(:one)
  end

  test "visiting the index" do
    visit aprendizados_url
    assert_selector "h1", text: "Aprendizados"
  end

  test "creating a Aprendizado" do
    visit aprendizados_url
    click_on "New Aprendizado"

    fill_in "Content", with: @aprendizado.content
    fill_in "Date", with: @aprendizado.date
    click_on "Create Aprendizado"

    assert_text "Aprendizado was successfully created"
    click_on "Back"
  end

  test "updating a Aprendizado" do
    visit aprendizados_url
    click_on "Edit", match: :first

    fill_in "Content", with: @aprendizado.content
    fill_in "Date", with: @aprendizado.date
    click_on "Update Aprendizado"

    assert_text "Aprendizado was successfully updated"
    click_on "Back"
  end

  test "destroying a Aprendizado" do
    visit aprendizados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aprendizado was successfully destroyed"
  end
end

require "application_system_test_case"

class ManualidadsTest < ApplicationSystemTestCase
  setup do
    @manualidad = manualidads(:one)
  end

  test "visiting the index" do
    visit manualidads_url
    assert_selector "h1", text: "Manualidads"
  end

  test "should create manualidad" do
    visit manualidads_url
    click_on "New manualidad"

    fill_in "Autor", with: @manualidad.autor
    fill_in "Estilo", with: @manualidad.estilo
    fill_in "Fecha", with: @manualidad.fecha
    fill_in "Foto", with: @manualidad.foto
    fill_in "Precio", with: @manualidad.precio
    click_on "Create Manualidad"

    assert_text "Manualidad was successfully created"
    click_on "Back"
  end

  test "should update Manualidad" do
    visit manualidad_url(@manualidad)
    click_on "Edit this manualidad", match: :first

    fill_in "Autor", with: @manualidad.autor
    fill_in "Estilo", with: @manualidad.estilo
    fill_in "Fecha", with: @manualidad.fecha
    fill_in "Foto", with: @manualidad.foto
    fill_in "Precio", with: @manualidad.precio
    click_on "Update Manualidad"

    assert_text "Manualidad was successfully updated"
    click_on "Back"
  end

  test "should destroy Manualidad" do
    visit manualidad_url(@manualidad)
    click_on "Destroy this manualidad", match: :first

    assert_text "Manualidad was successfully destroyed"
  end
end

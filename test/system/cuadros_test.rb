require "application_system_test_case"

class CuadrosTest < ApplicationSystemTestCase
  setup do
    @cuadro = cuadros(:one)
  end

  test "visiting the index" do
    visit cuadros_url
    assert_selector "h1", text: "Cuadros"
  end

  test "should create cuadro" do
    visit cuadros_url
    click_on "New cuadro"

    fill_in "Autor", with: @cuadro.autor
    fill_in "Estilo", with: @cuadro.estilo
    fill_in "Fecha", with: @cuadro.fecha
    fill_in "Foto", with: @cuadro.foto
    fill_in "Precio", with: @cuadro.precio
    click_on "Create Cuadro"

    assert_text "Cuadro was successfully created"
    click_on "Back"
  end

  test "should update Cuadro" do
    visit cuadro_url(@cuadro)
    click_on "Edit this cuadro", match: :first

    fill_in "Autor", with: @cuadro.autor
    fill_in "Estilo", with: @cuadro.estilo
    fill_in "Fecha", with: @cuadro.fecha
    fill_in "Foto", with: @cuadro.foto
    fill_in "Precio", with: @cuadro.precio
    click_on "Update Cuadro"

    assert_text "Cuadro was successfully updated"
    click_on "Back"
  end

  test "should destroy Cuadro" do
    visit cuadro_url(@cuadro)
    click_on "Destroy this cuadro", match: :first

    assert_text "Cuadro was successfully destroyed"
  end
end

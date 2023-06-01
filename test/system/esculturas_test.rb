require "application_system_test_case"

class EsculturasTest < ApplicationSystemTestCase
  setup do
    @escultura = esculturas(:one)
  end

  test "visiting the index" do
    visit esculturas_url
    assert_selector "h1", text: "Esculturas"
  end

  test "should create escultura" do
    visit esculturas_url
    click_on "New escultura"

    fill_in "Autor", with: @escultura.autor
    fill_in "Estilo", with: @escultura.estilo
    fill_in "Fecha", with: @escultura.fecha
    fill_in "Foto", with: @escultura.foto
    fill_in "Precio", with: @escultura.precio
    click_on "Create Escultura"

    assert_text "Escultura was successfully created"
    click_on "Back"
  end

  test "should update Escultura" do
    visit escultura_url(@escultura)
    click_on "Edit this escultura", match: :first

    fill_in "Autor", with: @escultura.autor
    fill_in "Estilo", with: @escultura.estilo
    fill_in "Fecha", with: @escultura.fecha
    fill_in "Foto", with: @escultura.foto
    fill_in "Precio", with: @escultura.precio
    click_on "Update Escultura"

    assert_text "Escultura was successfully updated"
    click_on "Back"
  end

  test "should destroy Escultura" do
    visit escultura_url(@escultura)
    click_on "Destroy this escultura", match: :first

    assert_text "Escultura was successfully destroyed"
  end
end

require "test_helper"

class EsculturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @escultura = esculturas(:one)
  end

  test "should get index" do
    get esculturas_url
    assert_response :success
  end

  test "should get new" do
    get new_escultura_url
    assert_response :success
  end

  test "should create escultura" do
    assert_difference("Escultura.count") do
      post esculturas_url, params: { escultura: { autor: @escultura.autor, estilo: @escultura.estilo, fecha: @escultura.fecha, foto: @escultura.foto, precio: @escultura.precio } }
    end

    assert_redirected_to escultura_url(Escultura.last)
  end

  test "should show escultura" do
    get escultura_url(@escultura)
    assert_response :success
  end

  test "should get edit" do
    get edit_escultura_url(@escultura)
    assert_response :success
  end

  test "should update escultura" do
    patch escultura_url(@escultura), params: { escultura: { autor: @escultura.autor, estilo: @escultura.estilo, fecha: @escultura.fecha, foto: @escultura.foto, precio: @escultura.precio } }
    assert_redirected_to escultura_url(@escultura)
  end

  test "should destroy escultura" do
    assert_difference("Escultura.count", -1) do
      delete escultura_url(@escultura)
    end

    assert_redirected_to esculturas_url
  end
end

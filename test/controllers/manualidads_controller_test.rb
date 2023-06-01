require "test_helper"

class ManualidadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manualidad = manualidads(:one)
  end

  test "should get index" do
    get manualidads_url
    assert_response :success
  end

  test "should get new" do
    get new_manualidad_url
    assert_response :success
  end

  test "should create manualidad" do
    assert_difference("Manualidad.count") do
      post manualidads_url, params: { manualidad: { autor: @manualidad.autor, estilo: @manualidad.estilo, fecha: @manualidad.fecha, foto: @manualidad.foto, precio: @manualidad.precio } }
    end

    assert_redirected_to manualidad_url(Manualidad.last)
  end

  test "should show manualidad" do
    get manualidad_url(@manualidad)
    assert_response :success
  end

  test "should get edit" do
    get edit_manualidad_url(@manualidad)
    assert_response :success
  end

  test "should update manualidad" do
    patch manualidad_url(@manualidad), params: { manualidad: { autor: @manualidad.autor, estilo: @manualidad.estilo, fecha: @manualidad.fecha, foto: @manualidad.foto, precio: @manualidad.precio } }
    assert_redirected_to manualidad_url(@manualidad)
  end

  test "should destroy manualidad" do
    assert_difference("Manualidad.count", -1) do
      delete manualidad_url(@manualidad)
    end

    assert_redirected_to manualidads_url
  end
end

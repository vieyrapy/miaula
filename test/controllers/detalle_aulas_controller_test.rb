require 'test_helper'

class DetalleAulasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detalle_aula = detalle_aulas(:one)
  end

  test "should get index" do
    get detalle_aulas_url
    assert_response :success
  end

  test "should get new" do
    get new_detalle_aula_url
    assert_response :success
  end

  test "should create detalle_aula" do
    assert_difference('DetalleAula.count') do
      post detalle_aulas_url, params: { detalle_aula: { observacion: @detalle_aula.observacion } }
    end

    assert_redirected_to detalle_aula_url(DetalleAula.last)
  end

  test "should show detalle_aula" do
    get detalle_aula_url(@detalle_aula)
    assert_response :success
  end

  test "should get edit" do
    get edit_detalle_aula_url(@detalle_aula)
    assert_response :success
  end

  test "should update detalle_aula" do
    patch detalle_aula_url(@detalle_aula), params: { detalle_aula: { observacion: @detalle_aula.observacion } }
    assert_redirected_to detalle_aula_url(@detalle_aula)
  end

  test "should destroy detalle_aula" do
    assert_difference('DetalleAula.count', -1) do
      delete detalle_aula_url(@detalle_aula)
    end

    assert_redirected_to detalle_aulas_url
  end
end

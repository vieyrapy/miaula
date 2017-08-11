require 'test_helper'

class AsignacionAulasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asignacion_aula = asignacion_aulas(:one)
  end

  test "should get index" do
    get asignacion_aulas_url
    assert_response :success
  end

  test "should get new" do
    get new_asignacion_aula_url
    assert_response :success
  end

  test "should create asignacion_aula" do
    assert_difference('AsignacionAula.count') do
      post asignacion_aulas_url, params: { asignacion_aula: { observacion: @asignacion_aula.observacion } }
    end

    assert_redirected_to asignacion_aula_url(AsignacionAula.last)
  end

  test "should show asignacion_aula" do
    get asignacion_aula_url(@asignacion_aula)
    assert_response :success
  end

  test "should get edit" do
    get edit_asignacion_aula_url(@asignacion_aula)
    assert_response :success
  end

  test "should update asignacion_aula" do
    patch asignacion_aula_url(@asignacion_aula), params: { asignacion_aula: { observacion: @asignacion_aula.observacion } }
    assert_redirected_to asignacion_aula_url(@asignacion_aula)
  end

  test "should destroy asignacion_aula" do
    assert_difference('AsignacionAula.count', -1) do
      delete asignacion_aula_url(@asignacion_aula)
    end

    assert_redirected_to asignacion_aulas_url
  end
end

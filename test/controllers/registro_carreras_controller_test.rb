require 'test_helper'

class RegistroCarrerasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registro_carrera = registro_carreras(:one)
  end

  test "should get index" do
    get registro_carreras_url
    assert_response :success
  end

  test "should get new" do
    get new_registro_carrera_url
    assert_response :success
  end

  test "should create registro_carrera" do
    assert_difference('RegistroCarrera.count') do
      post registro_carreras_url, params: { registro_carrera: { anho: @registro_carrera.anho, nombreCarrera: @registro_carrera.nombreCarrera, semestre: @registro_carrera.semestre } }
    end

    assert_redirected_to registro_carrera_url(RegistroCarrera.last)
  end

  test "should show registro_carrera" do
    get registro_carrera_url(@registro_carrera)
    assert_response :success
  end

  test "should get edit" do
    get edit_registro_carrera_url(@registro_carrera)
    assert_response :success
  end

  test "should update registro_carrera" do
    patch registro_carrera_url(@registro_carrera), params: { registro_carrera: { anho: @registro_carrera.anho, nombreCarrera: @registro_carrera.nombreCarrera, semestre: @registro_carrera.semestre } }
    assert_redirected_to registro_carrera_url(@registro_carrera)
  end

  test "should destroy registro_carrera" do
    assert_difference('RegistroCarrera.count', -1) do
      delete registro_carrera_url(@registro_carrera)
    end

    assert_redirected_to registro_carreras_url
  end
end

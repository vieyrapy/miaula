require 'test_helper'

class AnhoCarrerasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anho_carrera = anho_carreras(:one)
  end

  test "should get index" do
    get anho_carreras_url
    assert_response :success
  end

  test "should get new" do
    get new_anho_carrera_url
    assert_response :success
  end

  test "should create anho_carrera" do
    assert_difference('AnhoCarrera.count') do
      post anho_carreras_url, params: { anho_carrera: { anho: @anho_carrera.anho } }
    end

    assert_redirected_to anho_carrera_url(AnhoCarrera.last)
  end

  test "should show anho_carrera" do
    get anho_carrera_url(@anho_carrera)
    assert_response :success
  end

  test "should get edit" do
    get edit_anho_carrera_url(@anho_carrera)
    assert_response :success
  end

  test "should update anho_carrera" do
    patch anho_carrera_url(@anho_carrera), params: { anho_carrera: { anho: @anho_carrera.anho } }
    assert_redirected_to anho_carrera_url(@anho_carrera)
  end

  test "should destroy anho_carrera" do
    assert_difference('AnhoCarrera.count', -1) do
      delete anho_carrera_url(@anho_carrera)
    end

    assert_redirected_to anho_carreras_url
  end
end

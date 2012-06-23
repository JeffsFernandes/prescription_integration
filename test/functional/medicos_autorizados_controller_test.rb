require 'test_helper'

class MedicosAutorizadosControllerTest < ActionController::TestCase
  setup do
    @medicos_autorizado = medicos_autorizados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medicos_autorizados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medicos_autorizado" do
    assert_difference('MedicosAutorizado.count') do
      post :create, medicos_autorizado: @medicos_autorizado.attributes
    end

    assert_redirected_to medicos_autorizado_path(assigns(:medicos_autorizado))
  end

  test "should show medicos_autorizado" do
    get :show, id: @medicos_autorizado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medicos_autorizado
    assert_response :success
  end

  test "should update medicos_autorizado" do
    put :update, id: @medicos_autorizado, medicos_autorizado: @medicos_autorizado.attributes
    assert_redirected_to medicos_autorizado_path(assigns(:medicos_autorizado))
  end

  test "should destroy medicos_autorizado" do
    assert_difference('MedicosAutorizado.count', -1) do
      delete :destroy, id: @medicos_autorizado
    end

    assert_redirected_to medicos_autorizados_path
  end
end

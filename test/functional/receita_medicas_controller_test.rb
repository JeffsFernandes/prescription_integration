require 'test_helper'

class ReceitaMedicasControllerTest < ActionController::TestCase
  setup do
    @receita_medica = receita_medicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:receita_medicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create receita_medica" do
    assert_difference('ReceitaMedica.count') do
      post :create, receita_medica: @receita_medica.attributes
    end

    assert_redirected_to receita_medica_path(assigns(:receita_medica))
  end

  test "should show receita_medica" do
    get :show, id: @receita_medica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @receita_medica
    assert_response :success
  end

  test "should update receita_medica" do
    put :update, id: @receita_medica, receita_medica: @receita_medica.attributes
    assert_redirected_to receita_medica_path(assigns(:receita_medica))
  end

  test "should destroy receita_medica" do
    assert_difference('ReceitaMedica.count', -1) do
      delete :destroy, id: @receita_medica
    end

    assert_redirected_to receita_medicas_path
  end
end

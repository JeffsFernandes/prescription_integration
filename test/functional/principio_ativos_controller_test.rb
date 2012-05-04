require 'test_helper'

class PrincipioAtivosControllerTest < ActionController::TestCase
  setup do
    @principio_ativo = principio_ativos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:principio_ativos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create principio_ativo" do
    assert_difference('PrincipioAtivo.count') do
      post :create, principio_ativo: @principio_ativo.attributes
    end

    assert_redirected_to principio_ativo_path(assigns(:principio_ativo))
  end

  test "should show principio_ativo" do
    get :show, id: @principio_ativo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @principio_ativo
    assert_response :success
  end

  test "should update principio_ativo" do
    put :update, id: @principio_ativo, principio_ativo: @principio_ativo.attributes
    assert_redirected_to principio_ativo_path(assigns(:principio_ativo))
  end

  test "should destroy principio_ativo" do
    assert_difference('PrincipioAtivo.count', -1) do
      delete :destroy, id: @principio_ativo
    end

    assert_redirected_to principio_ativos_path
  end
end

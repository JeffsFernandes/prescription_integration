require 'test_helper'

class FarmaciasControllerTest < ActionController::TestCase
  setup do
    @farmacia = farmacias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:farmacias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create farmacia" do
    assert_difference('Farmacia.count') do
      post :create, farmacia: @farmacia.attributes
    end

    assert_redirected_to farmacia_path(assigns(:farmacia))
  end

  test "should show farmacia" do
    get :show, id: @farmacia
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @farmacia
    assert_response :success
  end

  test "should update farmacia" do
    put :update, id: @farmacia, farmacia: @farmacia.attributes
    assert_redirected_to farmacia_path(assigns(:farmacia))
  end

  test "should destroy farmacia" do
    assert_difference('Farmacia.count', -1) do
      delete :destroy, id: @farmacia
    end

    assert_redirected_to farmacias_path
  end
end

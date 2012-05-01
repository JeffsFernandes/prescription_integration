require 'test_helper'

class FarmaciaControllerTest < ActionController::TestCase
  setup do
    @farmacium = farmacia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:farmacia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create farmacium" do
    assert_difference('Farmacium.count') do
      post :create, farmacium: @farmacium.attributes
    end

    assert_redirected_to farmacium_path(assigns(:farmacium))
  end

  test "should show farmacium" do
    get :show, id: @farmacium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @farmacium
    assert_response :success
  end

  test "should update farmacium" do
    put :update, id: @farmacium, farmacium: @farmacium.attributes
    assert_redirected_to farmacium_path(assigns(:farmacium))
  end

  test "should destroy farmacium" do
    assert_difference('Farmacium.count', -1) do
      delete :destroy, id: @farmacium
    end

    assert_redirected_to farmacia_path
  end
end

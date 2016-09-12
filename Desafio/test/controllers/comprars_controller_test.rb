require 'test_helper'

class ComprarsControllerTest < ActionController::TestCase
  setup do
    @comprar = comprars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comprars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comprar" do
    assert_difference('Comprar.count') do
      post :create, comprar: {  }
    end

    assert_redirected_to comprar_path(assigns(:comprar))
  end

  test "should show comprar" do
    get :show, id: @comprar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comprar
    assert_response :success
  end

  test "should update comprar" do
    patch :update, id: @comprar, comprar: {  }
    assert_redirected_to comprar_path(assigns(:comprar))
  end

  test "should destroy comprar" do
    assert_difference('Comprar.count', -1) do
      delete :destroy, id: @comprar
    end

    assert_redirected_to comprars_path
  end
end

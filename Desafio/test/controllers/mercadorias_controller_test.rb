require 'test_helper'

class MercadoriasControllerTest < ActionController::TestCase
  setup do
    @mercadoria = mercadorias(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mercadorias)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mercadoria" do
    assert_difference('Mercadoria.count') do
      post :create, mercadoria: { nome: @mercadoria.nome, preco: @mercadoria.preco, quantidade: @mercadoria.quantidade, tipo: @mercadoria.tipo }
    end

    assert_redirected_to mercadoria_path(assigns(:mercadoria))
  end

  test "should show mercadoria" do
    get :show, id: @mercadoria
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mercadoria
    assert_response :success
  end

  test "should update mercadoria" do
    patch :update, id: @mercadoria, mercadoria: { nome: @mercadoria.nome, preco: @mercadoria.preco, quantidade: @mercadoria.quantidade, tipo: @mercadoria.tipo }
    assert_redirected_to mercadoria_path(assigns(:mercadoria))
  end

  test "should destroy mercadoria" do
    assert_difference('Mercadoria.count', -1) do
      delete :destroy, id: @mercadoria
    end

    assert_redirected_to mercadorias_path
  end
end

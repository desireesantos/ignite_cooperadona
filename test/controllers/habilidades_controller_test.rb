require 'test_helper'

class HabilidadesControllerTest < ActionController::TestCase
  setup do
    @habilidade = habilidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:habilidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create habilidade" do
    assert_difference('Habilidade.count') do
      post :create, habilidade: { nivel: @habilidade.nivel, nome: @habilidade.nome, pessoa_id: @habilidade.pessoa_id }
    end

    assert_redirected_to habilidade_path(assigns(:habilidade))
  end

  test "should show habilidade" do
    get :show, id: @habilidade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @habilidade
    assert_response :success
  end

  test "should update habilidade" do
    patch :update, id: @habilidade, habilidade: { nivel: @habilidade.nivel, nome: @habilidade.nome, pessoa_id: @habilidade.pessoa_id }
    assert_redirected_to habilidade_path(assigns(:habilidade))
  end

  test "should destroy habilidade" do
    assert_difference('Habilidade.count', -1) do
      delete :destroy, id: @habilidade
    end

    assert_redirected_to habilidades_path
  end
end

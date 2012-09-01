require 'test_helper'

class MicroprocessorsControllerTest < ActionController::TestCase
  setup do
    @microprocessor = microprocessors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microprocessors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microprocessor" do
    assert_difference('Microprocessor.count') do
      post :create, microprocessor: { mark_id: @microprocessor.mark_id, modelo: @microprocessor.modelo, nombre: @microprocessor.nombre, velocidad: @microprocessor.velocidad }
    end

    assert_redirected_to microprocessor_path(assigns(:microprocessor))
  end

  test "should show microprocessor" do
    get :show, id: @microprocessor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microprocessor
    assert_response :success
  end

  test "should update microprocessor" do
    put :update, id: @microprocessor, microprocessor: { mark_id: @microprocessor.mark_id, modelo: @microprocessor.modelo, nombre: @microprocessor.nombre, velocidad: @microprocessor.velocidad }
    assert_redirected_to microprocessor_path(assigns(:microprocessor))
  end

  test "should destroy microprocessor" do
    assert_difference('Microprocessor.count', -1) do
      delete :destroy, id: @microprocessor
    end

    assert_redirected_to microprocessors_path
  end
end

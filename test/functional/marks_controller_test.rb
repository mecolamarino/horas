require 'test_helper'

class MarksControllerTest < ActionController::TestCase
  setup do
    @mark = marks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:marks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mark" do
    assert_difference('Mark.count') do
      post :create, mark: { nombre: @mark.nombre, tipo: @mark.tipo }
    end

    assert_redirected_to mark_path(assigns(:mark))
  end

  test "should show mark" do
    get :show, id: @mark
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mark
    assert_response :success
  end

  test "should update mark" do
    put :update, id: @mark, mark: { nombre: @mark.nombre, tipo: @mark.tipo }
    assert_redirected_to mark_path(assigns(:mark))
  end

  test "should destroy mark" do
    assert_difference('Mark.count', -1) do
      delete :destroy, id: @mark
    end

    assert_redirected_to marks_path
  end
end

require 'test_helper'

class ScannersControllerTest < ActionController::TestCase
  setup do
    @scanner = scanners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scanners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scanner" do
    assert_difference('Scanner.count') do
      post :create, scanner: { mark_id: @scanner.mark_id, modelo: @scanner.modelo }
    end

    assert_redirected_to scanner_path(assigns(:scanner))
  end

  test "should show scanner" do
    get :show, id: @scanner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scanner
    assert_response :success
  end

  test "should update scanner" do
    put :update, id: @scanner, scanner: { mark_id: @scanner.mark_id, modelo: @scanner.modelo }
    assert_redirected_to scanner_path(assigns(:scanner))
  end

  test "should destroy scanner" do
    assert_difference('Scanner.count', -1) do
      delete :destroy, id: @scanner
    end

    assert_redirected_to scanners_path
  end
end

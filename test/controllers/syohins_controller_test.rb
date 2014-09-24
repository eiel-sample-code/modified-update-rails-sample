require 'test_helper'

class SyohinsControllerTest < ActionController::TestCase
  setup do
    @syohin = syohins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:syohins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create syohin" do
    assert_difference('Syohin.count') do
      post :create, syohin: { kingaku: @syohin.kingaku, record_datetime: @syohin.record_datetime }
    end

    assert_redirected_to syohin_path(assigns(:syohin))
  end

  test "should show syohin" do
    get :show, id: @syohin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @syohin
    assert_response :success
  end

  test "should update syohin" do
    patch :update, id: @syohin, syohin: { kingaku: @syohin.kingaku, record_datetime: @syohin.record_datetime }
    assert_redirected_to syohin_path(assigns(:syohin))
  end

  test "should destroy syohin" do
    assert_difference('Syohin.count', -1) do
      delete :destroy, id: @syohin
    end

    assert_redirected_to syohins_path
  end
end

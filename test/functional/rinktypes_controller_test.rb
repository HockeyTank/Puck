require 'test_helper'

class RinktypesControllerTest < ActionController::TestCase
  setup do
    @rinktype = rinktypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rinktypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rinktype" do
    assert_difference('Rinktype.count') do
      post :create, rinktype: { rink_id: @rinktype.rink_id, type: @rinktype.type }
    end

    assert_redirected_to rinktype_path(assigns(:rinktype))
  end

  test "should show rinktype" do
    get :show, id: @rinktype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rinktype
    assert_response :success
  end

  test "should update rinktype" do
    put :update, id: @rinktype, rinktype: { rink_id: @rinktype.rink_id, type: @rinktype.type }
    assert_redirected_to rinktype_path(assigns(:rinktype))
  end

  test "should destroy rinktype" do
    assert_difference('Rinktype.count', -1) do
      delete :destroy, id: @rinktype
    end

    assert_redirected_to rinktypes_path
  end
end

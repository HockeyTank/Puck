require 'test_helper'

class RinksControllerTest < ActionController::TestCase
  setup do
    @rink = rinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rink" do
    assert_difference('Rink.count') do
      post :create, rink: { address1: @rink.address1, address2: @rink.address2, addresscity: @rink.addresscity, addressstate: @rink.addressstate, addresszip: @rink.addresszip, indoor: @rink.indoor, name: @rink.name, notes: @rink.notes, openhockey: @rink.openhockey, phone1: @rink.phone1, phone2: @rink.phone2, proshop: @rink.proshop, sticktime: @rink.sticktime, surfacecount: @rink.surfacecount, website: @rink.website }
    end

    assert_redirected_to rink_path(assigns(:rink))
  end

  test "should show rink" do
    get :show, id: @rink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rink
    assert_response :success
  end

  test "should update rink" do
    put :update, id: @rink, rink: { address1: @rink.address1, address2: @rink.address2, addresscity: @rink.addresscity, addressstate: @rink.addressstate, addresszip: @rink.addresszip, indoor: @rink.indoor, name: @rink.name, notes: @rink.notes, openhockey: @rink.openhockey, phone1: @rink.phone1, phone2: @rink.phone2, proshop: @rink.proshop, sticktime: @rink.sticktime, surfacecount: @rink.surfacecount, website: @rink.website }
    assert_redirected_to rink_path(assigns(:rink))
  end

  test "should destroy rink" do
    assert_difference('Rink.count', -1) do
      delete :destroy, id: @rink
    end

    assert_redirected_to rinks_path
  end
end

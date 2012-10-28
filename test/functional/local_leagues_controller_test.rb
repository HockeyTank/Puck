require 'test_helper'

class LocalLeaguesControllerTest < ActionController::TestCase
  setup do
    @local_league = local_leagues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:local_leagues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create local_league" do
    assert_difference('LocalLeague.count') do
      post :create, local_league: { name: @local_league.name }
    end

    assert_redirected_to local_league_path(assigns(:local_league))
  end

  test "should show local_league" do
    get :show, id: @local_league
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @local_league
    assert_response :success
  end

  test "should update local_league" do
    put :update, id: @local_league, local_league: { name: @local_league.name }
    assert_redirected_to local_league_path(assigns(:local_league))
  end

  test "should destroy local_league" do
    assert_difference('LocalLeague.count', -1) do
      delete :destroy, id: @local_league
    end

    assert_redirected_to local_leagues_path
  end
end

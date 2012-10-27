require 'test_helper'

class RinkLeaguesControllerTest < ActionController::TestCase
  setup do
    @rink_league = rink_leagues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rink_leagues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rink_league" do
    assert_difference('RinkLeague.count') do
      post :create, rink_league: { display: @rink_league.display, value: @rink_league.value }
    end

    assert_redirected_to rink_league_path(assigns(:rink_league))
  end

  test "should show rink_league" do
    get :show, id: @rink_league
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rink_league
    assert_response :success
  end

  test "should update rink_league" do
    put :update, id: @rink_league, rink_league: { display: @rink_league.display, value: @rink_league.value }
    assert_redirected_to rink_league_path(assigns(:rink_league))
  end

  test "should destroy rink_league" do
    assert_difference('RinkLeague.count', -1) do
      delete :destroy, id: @rink_league
    end

    assert_redirected_to rink_leagues_path
  end
end

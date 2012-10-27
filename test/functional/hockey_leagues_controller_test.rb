require 'test_helper'

class HockeyLeaguesControllerTest < ActionController::TestCase
  setup do
    @hockey_league = hockey_leagues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hockey_leagues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hockey_league" do
    assert_difference('HockeyLeague.count') do
      post :create, hockey_league: { league: @hockey_league.league, rink_id: @hockey_league.rink_id }
    end

    assert_redirected_to hockey_league_path(assigns(:hockey_league))
  end

  test "should show hockey_league" do
    get :show, id: @hockey_league
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hockey_league
    assert_response :success
  end

  test "should update hockey_league" do
    put :update, id: @hockey_league, hockey_league: { league: @hockey_league.league, rink_id: @hockey_league.rink_id }
    assert_redirected_to hockey_league_path(assigns(:hockey_league))
  end

  test "should destroy hockey_league" do
    assert_difference('HockeyLeague.count', -1) do
      delete :destroy, id: @hockey_league
    end

    assert_redirected_to hockey_leagues_path
  end
end

require 'test_helper'

class RinkProgramsControllerTest < ActionController::TestCase
  setup do
    @rink_program = rink_programs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rink_programs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rink_program" do
    assert_difference('RinkProgram.count') do
      post :create, rink_program: { rink_id: @rink_program.rink_id, type: @rink_program.type }
    end

    assert_redirected_to rink_program_path(assigns(:rink_program))
  end

  test "should show rink_program" do
    get :show, id: @rink_program
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rink_program
    assert_response :success
  end

  test "should update rink_program" do
    put :update, id: @rink_program, rink_program: { rink_id: @rink_program.rink_id, type: @rink_program.type }
    assert_redirected_to rink_program_path(assigns(:rink_program))
  end

  test "should destroy rink_program" do
    assert_difference('RinkProgram.count', -1) do
      delete :destroy, id: @rink_program
    end

    assert_redirected_to rink_programs_path
  end
end

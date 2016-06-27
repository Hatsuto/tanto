require 'test_helper'

class GameusersControllerTest < ActionController::TestCase
  setup do
    @gameuser = gameusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gameusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gameuser" do
    assert_difference('Gameuser.count') do
      post :create, gameuser: {  }
    end

    assert_redirected_to gameuser_path(assigns(:gameuser))
  end

  test "should show gameuser" do
    get :show, id: @gameuser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gameuser
    assert_response :success
  end

  test "should update gameuser" do
    patch :update, id: @gameuser, gameuser: {  }
    assert_redirected_to gameuser_path(assigns(:gameuser))
  end

  test "should destroy gameuser" do
    assert_difference('Gameuser.count', -1) do
      delete :destroy, id: @gameuser
    end

    assert_redirected_to gameusers_path
  end
end

require 'test_helper'

class UserfriendsControllerTest < ActionController::TestCase
  setup do
    @userfriend = userfriends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userfriends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userfriend" do
    assert_difference('Userfriend.count') do
      post :create, userfriend: @userfriend.attributes
    end

    assert_redirected_to userfriend_path(assigns(:userfriend))
  end

  test "should show userfriend" do
    get :show, id: @userfriend.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userfriend.to_param
    assert_response :success
  end

  test "should update userfriend" do
    put :update, id: @userfriend.to_param, userfriend: @userfriend.attributes
    assert_redirected_to userfriend_path(assigns(:userfriend))
  end

  test "should destroy userfriend" do
    assert_difference('Userfriend.count', -1) do
      delete :destroy, id: @userfriend.to_param
    end

    assert_redirected_to userfriends_path
  end
end

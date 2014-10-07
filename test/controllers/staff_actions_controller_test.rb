require 'test_helper'

class StaffActionsControllerTest < ActionController::TestCase
  setup do
    @staff_action = staff_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staff_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staff_action" do
    assert_difference('StaffAction.count') do
      post :create, staff_action: {  }
    end

    assert_redirected_to staff_action_path(assigns(:staff_action))
  end

  test "should show staff_action" do
    get :show, id: @staff_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staff_action
    assert_response :success
  end

  test "should update staff_action" do
    patch :update, id: @staff_action, staff_action: {  }
    assert_redirected_to staff_action_path(assigns(:staff_action))
  end

  test "should destroy staff_action" do
    assert_difference('StaffAction.count', -1) do
      delete :destroy, id: @staff_action
    end

    assert_redirected_to staff_actions_path
  end
end

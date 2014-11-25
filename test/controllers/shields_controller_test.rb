require 'test_helper'

class ShieldsControllerTest < ActionController::TestCase
  setup do
    @shield = shields(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shields)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shield" do
    assert_difference('Shield.count') do
      post :create, shield: { description: @shield.description, origin: @shield.origin, shield: @shield.shield, surname_id: @shield.surname_id }
    end

    assert_redirected_to shield_path(assigns(:shield))
  end

  test "should show shield" do
    get :show, id: @shield
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shield
    assert_response :success
  end

  test "should update shield" do
    patch :update, id: @shield, shield: { description: @shield.description, origin: @shield.origin, shield: @shield.shield, surname_id: @shield.surname_id }
    assert_redirected_to shield_path(assigns(:shield))
  end

  test "should destroy shield" do
    assert_difference('Shield.count', -1) do
      delete :destroy, id: @shield
    end

    assert_redirected_to shields_path
  end
end

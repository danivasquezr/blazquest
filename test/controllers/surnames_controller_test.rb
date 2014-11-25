require 'test_helper'

class SurnamesControllerTest < ActionController::TestCase
  setup do
    @surname = surnames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surnames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create surname" do
    assert_difference('Surname.count') do
      post :create, surname: { description: @surname.description, history: @surname.history, origin: @surname.origin, shield: @surname.shield, surname: @surname.surname }
    end

    assert_redirected_to surname_path(assigns(:surname))
  end

  test "should show surname" do
    get :show, id: @surname
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @surname
    assert_response :success
  end

  test "should update surname" do
    patch :update, id: @surname, surname: { description: @surname.description, history: @surname.history, origin: @surname.origin, shield: @surname.shield, surname: @surname.surname }
    assert_redirected_to surname_path(assigns(:surname))
  end

  test "should destroy surname" do
    assert_difference('Surname.count', -1) do
      delete :destroy, id: @surname
    end

    assert_redirected_to surnames_path
  end
end

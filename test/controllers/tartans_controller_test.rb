require 'test_helper'

class TartansControllerTest < ActionController::TestCase
  setup do
    @tartan = tartans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tartans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tartan" do
    assert_difference('Tartan.count') do
      post :create, tartan: { surname_id: @tartan.surname_id, tartan: @tartan.tartan, tartext: @tartan.tartext }
    end

    assert_redirected_to tartan_path(assigns(:tartan))
  end

  test "should show tartan" do
    get :show, id: @tartan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tartan
    assert_response :success
  end

  test "should update tartan" do
    patch :update, id: @tartan, tartan: { surname_id: @tartan.surname_id, tartan: @tartan.tartan, tartext: @tartan.tartext }
    assert_redirected_to tartan_path(assigns(:tartan))
  end

  test "should destroy tartan" do
    assert_difference('Tartan.count', -1) do
      delete :destroy, id: @tartan
    end

    assert_redirected_to tartans_path
  end
end

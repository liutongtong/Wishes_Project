require 'test_helper'

class WishwallsControllerTest < ActionController::TestCase
  setup do
    @wishwall = wishwalls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wishwalls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wishwall" do
    assert_difference('Wishwall.count') do
      post :create, wishwall: { wish: @wishwall.wish }
    end

    assert_redirected_to wishwall_path(assigns(:wishwall))
  end

  test "should show wishwall" do
    get :show, id: @wishwall
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wishwall
    assert_response :success
  end

  test "should update wishwall" do
    put :update, id: @wishwall, wishwall: { wish: @wishwall.wish }
    assert_redirected_to wishwall_path(assigns(:wishwall))
  end

  test "should destroy wishwall" do
    assert_difference('Wishwall.count', -1) do
      delete :destroy, id: @wishwall
    end

    assert_redirected_to wishwalls_path
  end
end

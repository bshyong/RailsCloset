require 'test_helper'

class TiesControllerTest < ActionController::TestCase
  setup do
    @ty = ties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ty" do
    assert_difference('Tie.count') do
      post :create, ty: { date_acquired: @ty.date_acquired, last_worn: @ty.last_worn, name: @ty.name, price: @ty.price }
    end

    assert_redirected_to ty_path(assigns(:ty))
  end

  test "should show ty" do
    get :show, id: @ty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ty
    assert_response :success
  end

  test "should update ty" do
    patch :update, id: @ty, ty: { date_acquired: @ty.date_acquired, last_worn: @ty.last_worn, name: @ty.name, price: @ty.price }
    assert_redirected_to ty_path(assigns(:ty))
  end

  test "should destroy ty" do
    assert_difference('Tie.count', -1) do
      delete :destroy, id: @ty
    end

    assert_redirected_to ties_path
  end
end

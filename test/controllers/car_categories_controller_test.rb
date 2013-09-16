require 'test_helper'

class CarCategoriesControllerTest < ActionController::TestCase
  setup do
    @car_category = car_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_category" do
    assert_difference('CarCategory.count') do
      post :create, car_category: { name: @car_category.name }
    end

    assert_redirected_to car_category_path(assigns(:car_category))
  end

  test "should show car_category" do
    get :show, id: @car_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_category
    assert_response :success
  end

  test "should update car_category" do
    patch :update, id: @car_category, car_category: { name: @car_category.name }
    assert_redirected_to car_category_path(assigns(:car_category))
  end

  test "should destroy car_category" do
    assert_difference('CarCategory.count', -1) do
      delete :destroy, id: @car_category
    end

    assert_redirected_to car_categories_path
  end
end

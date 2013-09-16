require 'test_helper'

class MaintenanceCategoriesControllerTest < ActionController::TestCase
  setup do
    @maintenance_category = maintenance_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:maintenance_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create maintenance_category" do
    assert_difference('MaintenanceCategory.count') do
      post :create, maintenance_category: { name: @maintenance_category.name }
    end

    assert_redirected_to maintenance_category_path(assigns(:maintenance_category))
  end

  test "should show maintenance_category" do
    get :show, id: @maintenance_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @maintenance_category
    assert_response :success
  end

  test "should update maintenance_category" do
    patch :update, id: @maintenance_category, maintenance_category: { name: @maintenance_category.name }
    assert_redirected_to maintenance_category_path(assigns(:maintenance_category))
  end

  test "should destroy maintenance_category" do
    assert_difference('MaintenanceCategory.count', -1) do
      delete :destroy, id: @maintenance_category
    end

    assert_redirected_to maintenance_categories_path
  end
end

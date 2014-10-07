require 'test_helper'

class ProductDescriptionImagesControllerTest < ActionController::TestCase
  setup do
    @product_description_image = product_description_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_description_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_description_image" do
    assert_difference('ProductDescriptionImage.count') do
      post :create, product_description_image: {  }
    end

    assert_redirected_to product_description_image_path(assigns(:product_description_image))
  end

  test "should show product_description_image" do
    get :show, id: @product_description_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_description_image
    assert_response :success
  end

  test "should update product_description_image" do
    patch :update, id: @product_description_image, product_description_image: {  }
    assert_redirected_to product_description_image_path(assigns(:product_description_image))
  end

  test "should destroy product_description_image" do
    assert_difference('ProductDescriptionImage.count', -1) do
      delete :destroy, id: @product_description_image
    end

    assert_redirected_to product_description_images_path
  end
end

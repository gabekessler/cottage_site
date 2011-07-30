require 'test_helper'

class Admin::SlideshowImagesControllerTest < ActionController::TestCase
  setup do
    @admin_slideshow_image = admin_slideshow_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_slideshow_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_slideshow_image" do
    assert_difference('Admin::SlideshowImage.count') do
      post :create, :admin_slideshow_image => @admin_slideshow_image.attributes
    end

    assert_redirected_to admin_slideshow_image_path(assigns(:admin_slideshow_image))
  end

  test "should show admin_slideshow_image" do
    get :show, :id => @admin_slideshow_image.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @admin_slideshow_image.to_param
    assert_response :success
  end

  test "should update admin_slideshow_image" do
    put :update, :id => @admin_slideshow_image.to_param, :admin_slideshow_image => @admin_slideshow_image.attributes
    assert_redirected_to admin_slideshow_image_path(assigns(:admin_slideshow_image))
  end

  test "should destroy admin_slideshow_image" do
    assert_difference('Admin::SlideshowImage.count', -1) do
      delete :destroy, :id => @admin_slideshow_image.to_param
    end

    assert_redirected_to admin_slideshow_images_path
  end
end

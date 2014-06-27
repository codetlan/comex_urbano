require 'test_helper'

class LandingPagesControllerTest < ActionController::TestCase
  setup do
    @landing_page = landing_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:landing_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create landing_page" do
    assert_difference('LandingPage.count') do
      post :create, landing_page: { copyright: @landing_page.copyright, facebook: @landing_page.facebook, terms: @landing_page.terms, twitter: @landing_page.twitter, vimeo: @landing_page.vimeo, youtube: @landing_page.youtube }
    end

    assert_redirected_to landing_page_path(assigns(:landing_page))
  end

  test "should show landing_page" do
    get :show, id: @landing_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @landing_page
    assert_response :success
  end

  test "should update landing_page" do
    patch :update, id: @landing_page, landing_page: { copyright: @landing_page.copyright, facebook: @landing_page.facebook, terms: @landing_page.terms, twitter: @landing_page.twitter, vimeo: @landing_page.vimeo, youtube: @landing_page.youtube }
    assert_redirected_to landing_page_path(assigns(:landing_page))
  end

  test "should destroy landing_page" do
    assert_difference('LandingPage.count', -1) do
      delete :destroy, id: @landing_page
    end

    assert_redirected_to landing_pages_path
  end
end

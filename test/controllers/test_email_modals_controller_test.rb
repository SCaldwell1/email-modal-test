require 'test_helper'

class TestEmailModalsControllerTest < ActionController::TestCase
  setup do
    @test_email_modal = test_email_modals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_email_modals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_email_modal" do
    assert_difference('TestEmailModal.count') do
      post :create, test_email_modal: { content: @test_email_modal.content, slug: @test_email_modal.slug, title: @test_email_modal.title }
    end

    assert_redirected_to test_email_modal_path(assigns(:test_email_modal))
  end

  test "should show test_email_modal" do
    get :show, id: @test_email_modal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_email_modal
    assert_response :success
  end

  test "should update test_email_modal" do
    patch :update, id: @test_email_modal, test_email_modal: { content: @test_email_modal.content, slug: @test_email_modal.slug, title: @test_email_modal.title }
    assert_redirected_to test_email_modal_path(assigns(:test_email_modal))
  end

  test "should destroy test_email_modal" do
    assert_difference('TestEmailModal.count', -1) do
      delete :destroy, id: @test_email_modal
    end

    assert_redirected_to test_email_modals_path
  end
end

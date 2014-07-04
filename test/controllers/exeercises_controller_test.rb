require 'test_helper'

class ExeercisesControllerTest < ActionController::TestCase
  setup do
    @exeercise = exeercises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exeercises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exeercise" do
    assert_difference('Exeercise.count') do
      post :create, exeercise: { name: @exeercise.name }
    end

    assert_redirected_to exeercise_path(assigns(:exeercise))
  end

  test "should show exeercise" do
    get :show, id: @exeercise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exeercise
    assert_response :success
  end

  test "should update exeercise" do
    patch :update, id: @exeercise, exeercise: { name: @exeercise.name }
    assert_redirected_to exeercise_path(assigns(:exeercise))
  end

  test "should destroy exeercise" do
    assert_difference('Exeercise.count', -1) do
      delete :destroy, id: @exeercise
    end

    assert_redirected_to exeercises_path
  end
end

require 'test_helper'

class Agnieszka1sControllerTest < ActionController::TestCase
  setup do
    @agnieszka1 = agnieszka1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agnieszka1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agnieszka1" do
    assert_difference('Agnieszka1.count') do
      post :create, agnieszka1: { imie: @agnieszka1.imie, nazwisko: @agnieszka1.nazwisko }
    end

    assert_redirected_to agnieszka1_path(assigns(:agnieszka1))
  end

  test "should show agnieszka1" do
    get :show, id: @agnieszka1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agnieszka1
    assert_response :success
  end

  test "should update agnieszka1" do
    put :update, id: @agnieszka1, agnieszka1: { imie: @agnieszka1.imie, nazwisko: @agnieszka1.nazwisko }
    assert_redirected_to agnieszka1_path(assigns(:agnieszka1))
  end

  test "should destroy agnieszka1" do
    assert_difference('Agnieszka1.count', -1) do
      delete :destroy, id: @agnieszka1
    end

    assert_redirected_to agnieszka1s_path
  end
end

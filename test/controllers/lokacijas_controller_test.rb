require 'test_helper'

class LokacijasControllerTest < ActionController::TestCase
  setup do
    @lokacija = lokacijas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lokacijas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lokacija" do
    assert_difference('Lokacija.count') do
      post :create, lokacija: { adresa: @lokacija.adresa, drzava: @lokacija.drzava, grad: @lokacija.grad, id_lokacije: @lokacija.id_lokacije, naziv_prostora: @lokacija.naziv_prostora, post_br: @lokacija.post_br }
    end

    assert_redirected_to lokacija_path(assigns(:lokacija))
  end

  test "should show lokacija" do
    get :show, id: @lokacija
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lokacija
    assert_response :success
  end

  test "should update lokacija" do
    patch :update, id: @lokacija, lokacija: { adresa: @lokacija.adresa, drzava: @lokacija.drzava, grad: @lokacija.grad, id_lokacije: @lokacija.id_lokacije, naziv_prostora: @lokacija.naziv_prostora, post_br: @lokacija.post_br }
    assert_redirected_to lokacija_path(assigns(:lokacija))
  end

  test "should destroy lokacija" do
    assert_difference('Lokacija.count', -1) do
      delete :destroy, id: @lokacija
    end

    assert_redirected_to lokacijas_path
  end
end

require 'test_helper'

class InventarsControllerTest < ActionController::TestCase
  setup do
    @inventar = inventars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventar" do
    assert_difference('Inventar.count') do
      post :create, inventar: { fk_sifra_lokacije: @inventar.fk_sifra_lokacije, fk_sifra_vrste_inventara: @inventar.fk_sifra_vrste_inventara, id_inventara: @inventar.id_inventara, kolicina: @inventar.kolicina, naziv_inventara: @inventar.naziv_inventara }
    end

    assert_redirected_to inventar_path(assigns(:inventar))
  end

  test "should show inventar" do
    get :show, id: @inventar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inventar
    assert_response :success
  end

  test "should update inventar" do
    patch :update, id: @inventar, inventar: { fk_sifra_lokacije: @inventar.fk_sifra_lokacije, fk_sifra_vrste_inventara: @inventar.fk_sifra_vrste_inventara, id_inventara: @inventar.id_inventara, kolicina: @inventar.kolicina, naziv_inventara: @inventar.naziv_inventara }
    assert_redirected_to inventar_path(assigns(:inventar))
  end

  test "should destroy inventar" do
    assert_difference('Inventar.count', -1) do
      delete :destroy, id: @inventar
    end

    assert_redirected_to inventars_path
  end
end

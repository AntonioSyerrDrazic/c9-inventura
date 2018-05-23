require 'test_helper'

class ZaduzenjasControllerTest < ActionController::TestCase
  setup do
    @zaduzenja = zaduzenjas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:zaduzenjas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create zaduzenja" do
    assert_difference('Zaduzenja.count') do
      post :create, zaduzenja: { datum_zaduzenja: @zaduzenja.datum_zaduzenja, fk_sifra_inventara: @zaduzenja.fk_sifra_inventara, fk_sifra_korisnika: @zaduzenja.fk_sifra_korisnika, id_zaduzenja: @zaduzenja.id_zaduzenja }
    end

    assert_redirected_to zaduzenja_path(assigns(:zaduzenja))
  end

  test "should show zaduzenja" do
    get :show, id: @zaduzenja
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @zaduzenja
    assert_response :success
  end

  test "should update zaduzenja" do
    patch :update, id: @zaduzenja, zaduzenja: { datum_zaduzenja: @zaduzenja.datum_zaduzenja, fk_sifra_inventara: @zaduzenja.fk_sifra_inventara, fk_sifra_korisnika: @zaduzenja.fk_sifra_korisnika, id_zaduzenja: @zaduzenja.id_zaduzenja }
    assert_redirected_to zaduzenja_path(assigns(:zaduzenja))
  end

  test "should destroy zaduzenja" do
    assert_difference('Zaduzenja.count', -1) do
      delete :destroy, id: @zaduzenja
    end

    assert_redirected_to zaduzenjas_path
  end
end

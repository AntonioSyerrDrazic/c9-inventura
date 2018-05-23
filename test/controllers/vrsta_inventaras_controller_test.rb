require 'test_helper'

class VrstaInventarasControllerTest < ActionController::TestCase
  setup do
    @vrsta_inventara = vrsta_inventaras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vrsta_inventaras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vrsta_inventara" do
    assert_difference('VrstaInventara.count') do
      post :create, vrsta_inventara: { naziv_vrste: @vrsta_inventara.naziv_vrste, sifra_vrste: @vrsta_inventara.sifra_vrste }
    end

    assert_redirected_to vrsta_inventara_path(assigns(:vrsta_inventara))
  end

  test "should show vrsta_inventara" do
    get :show, id: @vrsta_inventara
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vrsta_inventara
    assert_response :success
  end

  test "should update vrsta_inventara" do
    patch :update, id: @vrsta_inventara, vrsta_inventara: { naziv_vrste: @vrsta_inventara.naziv_vrste, sifra_vrste: @vrsta_inventara.sifra_vrste }
    assert_redirected_to vrsta_inventara_path(assigns(:vrsta_inventara))
  end

  test "should destroy vrsta_inventara" do
    assert_difference('VrstaInventara.count', -1) do
      delete :destroy, id: @vrsta_inventara
    end

    assert_redirected_to vrsta_inventaras_path
  end
end

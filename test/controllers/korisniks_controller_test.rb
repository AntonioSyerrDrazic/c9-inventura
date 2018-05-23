require 'test_helper'

class KorisniksControllerTest < ActionController::TestCase
  setup do
    @korisnik = korisniks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:korisniks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create korisnik" do
    assert_difference('Korisnik.count') do
      post :create, korisnik: { broj_telefona: @korisnik.broj_telefona, email: @korisnik.email, id_korisnika: @korisnik.id_korisnika, ime: @korisnik.ime, password: @korisnik.password, prezime: @korisnik.prezime, username: @korisnik.username }
    end

    assert_redirected_to korisnik_path(assigns(:korisnik))
  end

  test "should show korisnik" do
    get :show, id: @korisnik
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @korisnik
    assert_response :success
  end

  test "should update korisnik" do
    patch :update, id: @korisnik, korisnik: { broj_telefona: @korisnik.broj_telefona, email: @korisnik.email, id_korisnika: @korisnik.id_korisnika, ime: @korisnik.ime, password: @korisnik.password, prezime: @korisnik.prezime, username: @korisnik.username }
    assert_redirected_to korisnik_path(assigns(:korisnik))
  end

  test "should destroy korisnik" do
    assert_difference('Korisnik.count', -1) do
      delete :destroy, id: @korisnik
    end

    assert_redirected_to korisniks_path
  end
end

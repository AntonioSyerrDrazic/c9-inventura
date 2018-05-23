class KorisniksController < ApplicationController
  before_action :set_korisnik, only: [:show, :edit, :update, :destroy]

  # GET /korisniks
  # GET /korisniks.json
  def index
    @korisniks = Korisnik.all
  end

  # GET /korisniks/1
  # GET /korisniks/1.json
  def show
  end

  # GET /korisniks/new
  def new
    @korisnik = Korisnik.new
  end

  # GET /korisniks/1/edit
  def edit
  end

  # POST /korisniks
  # POST /korisniks.json
  def create
    @korisnik = Korisnik.new(korisnik_params)

    respond_to do |format|
      if @korisnik.save
        format.html { redirect_to @korisnik, notice: 'Korisnik was successfully created.' }
        format.json { render :show, status: :created, location: @korisnik }
      else
        format.html { render :new }
        format.json { render json: @korisnik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /korisniks/1
  # PATCH/PUT /korisniks/1.json
  def update
    respond_to do |format|
      if @korisnik.update(korisnik_params)
        format.html { redirect_to @korisnik, notice: 'Korisnik was successfully updated.' }
        format.json { render :show, status: :ok, location: @korisnik }
      else
        format.html { render :edit }
        format.json { render json: @korisnik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /korisniks/1
  # DELETE /korisniks/1.json
  def destroy
    @korisnik.destroy
    respond_to do |format|
      format.html { redirect_to korisniks_url, notice: 'Korisnik was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_korisnik
      @korisnik = Korisnik.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def korisnik_params
      params.require(:korisnik).permit(:id_korisnika, :username, :password, :ime, :prezime, :email, :broj_telefona)
    end
end

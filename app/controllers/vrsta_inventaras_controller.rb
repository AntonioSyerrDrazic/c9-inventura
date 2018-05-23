class VrstaInventarasController < ApplicationController
  before_action :set_vrsta_inventara, only: [:show, :edit, :update, :destroy]

  # GET /vrsta_inventaras
  # GET /vrsta_inventaras.json
  def index
    @vrsta_inventaras = VrstaInventara.all
  end

  # GET /vrsta_inventaras/1
  # GET /vrsta_inventaras/1.json
  def show
  end

  # GET /vrsta_inventaras/new
  def new
    @vrsta_inventara = VrstaInventara.new
  end

  # GET /vrsta_inventaras/1/edit
  def edit
  end

  # POST /vrsta_inventaras
  # POST /vrsta_inventaras.json
  def create
    @vrsta_inventara = VrstaInventara.new(vrsta_inventara_params)

    respond_to do |format|
      if @vrsta_inventara.save
        format.html { redirect_to vrsta_inventaras_url, notice: 'Vrsta inventara je uspješno stvorena.' }
        format.json { render :show, status: :created, location: @vrsta_inventara }
      else
        format.html { render :new }
        format.json { render json: @vrsta_inventara.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vrsta_inventaras/1
  # PATCH/PUT /vrsta_inventaras/1.json
  def update
    respond_to do |format|
      if @vrsta_inventara.update(vrsta_inventara_params)
        format.html { redirect_to vrsta_inventaras_url, notice: 'Vrsta inventara je uspješno ažurirana.' }
        format.json { render :show, status: :ok, location: @vrsta_inventara }
      else
        format.html { render :edit }
        format.json { render json: @vrsta_inventara.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vrsta_inventaras/1
  # DELETE /vrsta_inventaras/1.json
  def destroy
    @vrsta_inventara.destroy
    respond_to do |format|
      format.html { redirect_to vrsta_inventaras_url, notice: 'Vrsta inventara was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vrsta_inventara
      @vrsta_inventara = VrstaInventara.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vrsta_inventara_params
      params.require(:vrsta_inventara).permit(:sifra_vrste, :naziv_vrste)
    end
end

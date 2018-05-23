class InventarsController < ApplicationController
  before_action :set_inventar, only: [:show, :edit, :update, :destroy]

  # GET /inventars
  # GET /inventars.json
  def index
    @inventars = Inventar.all
  end

  # GET /inventars/1
  # GET /inventars/1.json
  def show
  end

  # GET /inventars/new
  def new
    @inventar = Inventar.new
  end

  # GET /inventars/1/edit
  def edit
  end

  # POST /inventars
  # POST /inventars.json
  def create
    @inventar = Inventar.new(inventar_params)

    respond_to do |format|
      if @inventar.save
        format.html { redirect_to @inventar, notice: 'Inventar was successfully created.' }
        format.json { render :show, status: :created, location: @inventar }
      else
        format.html { render :new }
        format.json { render json: @inventar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventars/1
  # PATCH/PUT /inventars/1.json
  def update
    respond_to do |format|
      if @inventar.update(inventar_params)
        format.html { redirect_to @inventar, notice: 'Inventar was successfully updated.' }
        format.json { render :show, status: :ok, location: @inventar }
      else
        format.html { render :edit }
        format.json { render json: @inventar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventars/1
  # DELETE /inventars/1.json
  def destroy
    @inventar.destroy
    respond_to do |format|
      format.html { redirect_to inventars_url, notice: 'Inventar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventar
      @inventar = Inventar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inventar_params
      params.require(:inventar).permit(:id_inventara, :naziv_inventara, :kolicina, :fk_sifra_lokacije, :fk_sifra_vrste_inventara)
    end
end

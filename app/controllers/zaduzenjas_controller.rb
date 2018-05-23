class ZaduzenjasController < ApplicationController
  before_action :set_zaduzenja, only: [:show, :edit, :update, :destroy]

  # GET /zaduzenjas
  # GET /zaduzenjas.json
  def index
    @zaduzenjas = Zaduzenja.all
  end

  # GET /zaduzenjas/1
  # GET /zaduzenjas/1.json
  def show
  end

  # GET /zaduzenjas/new
  def new
    @zaduzenja = Zaduzenja.new
  end

  # GET /zaduzenjas/1/edit
  def edit
  end

  # POST /zaduzenjas
  # POST /zaduzenjas.json
  def create
    @zaduzenja = Zaduzenja.new(zaduzenja_params)

    respond_to do |format|
      if @zaduzenja.save
        format.html { redirect_to @zaduzenja, notice: 'Zaduzenja was successfully created.' }
        format.json { render :show, status: :created, location: @zaduzenja }
      else
        format.html { render :new }
        format.json { render json: @zaduzenja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zaduzenjas/1
  # PATCH/PUT /zaduzenjas/1.json
  def update
    respond_to do |format|
      if @zaduzenja.update(zaduzenja_params)
        format.html { redirect_to @zaduzenja, notice: 'Zaduzenja was successfully updated.' }
        format.json { render :show, status: :ok, location: @zaduzenja }
      else
        format.html { render :edit }
        format.json { render json: @zaduzenja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zaduzenjas/1
  # DELETE /zaduzenjas/1.json
  def destroy
    @zaduzenja.destroy
    respond_to do |format|
      format.html { redirect_to zaduzenjas_url, notice: 'Zaduzenja was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zaduzenja
      @zaduzenja = Zaduzenja.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zaduzenja_params
      params.require(:zaduzenja).permit(:id_zaduzenja, :datum_zaduzenja, :fk_sifra_inventara, :fk_sifra_korisnika)
    end
end

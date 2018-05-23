class LokacijasController < ApplicationController
  before_action :set_lokacija, only: [:show, :edit, :update, :destroy]

  # GET /lokacijas
  # GET /lokacijas.json
  def index
    @lokacijas = Lokacija.all
  end

  # GET /lokacijas/1
  # GET /lokacijas/1.json
  def show
  end

  # GET /lokacijas/new
  def new
    @lokacija = Lokacija.new
  end

  # GET /lokacijas/1/edit
  def edit
  end

  # POST /lokacijas
  # POST /lokacijas.json
  def create
    @lokacija = Lokacija.new(lokacija_params)

    respond_to do |format|
      if @lokacija.save
        format.html { redirect_to @lokacija, notice: 'Lokacija was successfully created.' }
        format.json { render :show, status: :created, location: @lokacija }
      else
        format.html { render :new }
        format.json { render json: @lokacija.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lokacijas/1
  # PATCH/PUT /lokacijas/1.json
  def update
    respond_to do |format|
      if @lokacija.update(lokacija_params)
        format.html { redirect_to @lokacija, notice: 'Lokacija was successfully updated.' }
        format.json { render :show, status: :ok, location: @lokacija }
      else
        format.html { render :edit }
        format.json { render json: @lokacija.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lokacijas/1
  # DELETE /lokacijas/1.json
  def destroy
    @lokacija.destroy
    respond_to do |format|
      format.html { redirect_to lokacijas_url, notice: 'Lokacija was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lokacija
      @lokacija = Lokacija.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lokacija_params
      params.require(:lokacija).permit(:id_lokacije, :grad, :drzava, :adresa, :post_br, :naziv_prostora)
    end
end

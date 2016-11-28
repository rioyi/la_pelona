class SicknessGeneralsController < ApplicationController
  before_action :set_sickness_general, only: [:show, :edit, :update, :destroy]

  # GET /sickness_generals
  # GET /sickness_generals.json
  def index
    @sickness_generals = SicknessGeneral.all
  end

  # GET /sickness_generals/1
  # GET /sickness_generals/1.json
  def show
  end

  # GET /sickness_generals/new
  def new
    @sickness_general = SicknessGeneral.new
  end

  # GET /sickness_generals/1/edit
  def edit
  end

  # POST /sickness_generals
  # POST /sickness_generals.json
  def create
    @sickness_general = SicknessGeneral.new(sickness_general_params)

    respond_to do |format|
      if @sickness_general.save
        format.html { redirect_to @sickness_general, notice: 'Sickness general was successfully created.' }
        format.json { render :show, status: :created, location: @sickness_general }
      else
        format.html { render :new }
        format.json { render json: @sickness_general.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sickness_generals/1
  # PATCH/PUT /sickness_generals/1.json
  def update
    respond_to do |format|
      if @sickness_general.update(sickness_general_params)
        format.html { redirect_to @sickness_general, notice: 'Sickness general was successfully updated.' }
        format.json { render :show, status: :ok, location: @sickness_general }
      else
        format.html { render :edit }
        format.json { render json: @sickness_general.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sickness_generals/1
  # DELETE /sickness_generals/1.json
  def destroy
    @sickness_general.destroy
    respond_to do |format|
      format.html { redirect_to sickness_generals_url, notice: 'Sickness general was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sickness_general
      @sickness_general = SicknessGeneral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sickness_general_params
      params.require(:sickness_general).permit(:name)
    end
end

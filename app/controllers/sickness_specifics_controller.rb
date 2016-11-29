class SicknessSpecificsController < ApplicationController
  before_action :set_sickness_specific, only: [:show, :edit, :update, :destroy]
  before_action :set_sickness_general, only: [:new, :edit, :create, :update]

  # GET /sickness_specifics
  # GET /sickness_specifics.json
  def index
    @sickness_specifics = SicknessSpecific.all
  end

  # GET /sickness_specifics/1
  # GET /sickness_specifics/1.json
  def show
  end

  # GET /sickness_specifics/new
  def new
    @sickness_specific = SicknessSpecific.new
  end

  # GET /sickness_specifics/1/edit
  def edit
  end

  # POST /sickness_specifics
  # POST /sickness_specifics.json
  def create
    @sickness_specific = SicknessSpecific.new(sickness_specific_params)

    respond_to do |format|
      if @sickness_specific.save
        format.html { redirect_to @sickness_specific, notice: 'Sickness specific was successfully created.' }
        format.json { render :show, status: :created, location: @sickness_specific }
      else
        format.html { render :new }
        format.json { render json: @sickness_specific.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sickness_specifics/1
  # PATCH/PUT /sickness_specifics/1.json
  def update
    respond_to do |format|
      if @sickness_specific.update(sickness_specific_params)
        format.html { redirect_to @sickness_specific, notice: 'Sickness specific was successfully updated.' }
        format.json { render :show, status: :ok, location: @sickness_specific }
      else
        format.html { render :edit }
        format.json { render json: @sickness_specific.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sickness_specifics/1
  # DELETE /sickness_specifics/1.json
  def destroy
    @sickness_specific.destroy
    respond_to do |format|
      format.html { redirect_to sickness_specifics_url, notice: 'Sickness specific was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sickness_specific
      @sickness_specific = SicknessSpecific.find(params[:id])
    end

    def set_sickness_general
      @sickness_general = SicknessGeneral.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sickness_specific_params
      params.require(:sickness_specific).permit(:name, :cod, :sickness_general_id)
    end
end

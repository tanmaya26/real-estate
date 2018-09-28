class HouseRealtorsController < ApplicationController
  before_action :set_house_realtor, only: [:show, :edit, :update, :destroy]

  # GET /house_realtors
  # GET /house_realtors.json
  def index
    @house_realtors = HouseRealtor.all
  end

  # GET /house_realtors/1
  # GET /house_realtors/1.json
  def show
  end

  # GET /house_realtors/new
  def new
    @house_realtor = HouseRealtor.new
  end

  # GET /house_realtors/1/edit
  def edit
  end

  # POST /house_realtors
  # POST /house_realtors.json
  def create
    @house_realtor = HouseRealtor.new(house_realtor_params)

    respond_to do |format|
      if @house_realtor.save
        format.html { redirect_to @house_realtor, notice: 'House realtor was successfully created.' }
        format.json { render :show, status: :created, location: @house_realtor }
      else
        format.html { render :new }
        format.json { render json: @house_realtor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /house_realtors/1
  # PATCH/PUT /house_realtors/1.json
  def update
    respond_to do |format|
      if @house_realtor.update(house_realtor_params)
        format.html { redirect_to @house_realtor, notice: 'House realtor was successfully updated.' }
        format.json { render :show, status: :ok, location: @house_realtor }
      else
        format.html { render :edit }
        format.json { render json: @house_realtor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /house_realtors/1
  # DELETE /house_realtors/1.json
  def destroy
    @house_realtor.destroy
    respond_to do |format|
      format.html { redirect_to house_realtors_url, notice: 'House realtor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house_realtor
      @house_realtor = HouseRealtor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def house_realtor_params
      params.require(:house_realtor).permit(:house_id, :user_id)
    end
end

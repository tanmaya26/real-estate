class CompanyHouseMappingsController < ApplicationController
  before_action :set_company_house_mapping, only: [:show, :edit, :update, :destroy]

  # GET /company_house_mappings
  # GET /company_house_mappings.json
  def index
    @company_house_mappings = CompanyHouseMapping.all
  end

  # GET /company_house_mappings/1
  # GET /company_house_mappings/1.json
  def show
  end

  # GET /company_house_mappings/new
  def new
    @company_house_mapping = CompanyHouseMapping.new
  end

  # GET /company_house_mappings/1/edit
  def edit
  end

  # POST /company_house_mappings
  # POST /company_house_mappings.json
  def create
    @company_house_mapping = CompanyHouseMapping.new(company_house_mapping_params)

    respond_to do |format|
      if @company_house_mapping.save
        format.html { redirect_to @company_house_mapping, notice: 'Company house mapping was successfully created.' }
        format.json { render :show, status: :created, location: @company_house_mapping }
      else
        format.html { render :new }
        format.json { render json: @company_house_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_house_mappings/1
  # PATCH/PUT /company_house_mappings/1.json
  def update
    respond_to do |format|
      if @company_house_mapping.update(company_house_mapping_params)
        format.html { redirect_to @company_house_mapping, notice: 'Company house mapping was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_house_mapping }
      else
        format.html { render :edit }
        format.json { render json: @company_house_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_house_mappings/1
  # DELETE /company_house_mappings/1.json
  def destroy
    @company_house_mapping.destroy
    respond_to do |format|
      format.html { redirect_to company_house_mappings_url, notice: 'Company house mapping was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_house_mapping
      @company_house_mapping = CompanyHouseMapping.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_house_mapping_params
      params.require(:company_house_mapping).permit(:company_id, :house_id)
    end
end

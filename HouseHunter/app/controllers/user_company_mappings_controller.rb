class UserCompanyMappingsController < ApplicationController
  before_action :set_user_company_mapping, only: [:show, :edit, :update, :destroy]

  # GET /user_company_mappings
  # GET /user_company_mappings.json
  def index
    @user_company_mappings = UserCompanyMapping.all
  end

  # GET /user_company_mappings/1
  # GET /user_company_mappings/1.json
  def show
  end

  # GET /user_company_mappings/new
  def new
    @user_company_mapping = UserCompanyMapping.new
  end

  # GET /user_company_mappings/1/edit
  def edit
  end

  # POST /user_company_mappings
  # POST /user_company_mappings.json
  def create
    @user_company_mapping = UserCompanyMapping.new(user_company_mapping_params)

    respond_to do |format|
      if @user_company_mapping.save
        format.html { redirect_to @user_company_mapping, notice: 'User company mapping was successfully created.' }
        format.json { render :show, status: :created, location: @user_company_mapping }
      else
        format.html { render :new }
        format.json { render json: @user_company_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_company_mappings/1
  # PATCH/PUT /user_company_mappings/1.json
  def update
    respond_to do |format|
      if @user_company_mapping.update(user_company_mapping_params)
        format.html { redirect_to @user_company_mapping, notice: 'User company mapping was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_company_mapping }
      else
        format.html { render :edit }
        format.json { render json: @user_company_mapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_company_mappings/1
  # DELETE /user_company_mappings/1.json
  def destroy
    @user_company_mapping.destroy
    respond_to do |format|
      format.html { redirect_to user_company_mappings_url, notice: 'User company mapping was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_company_mapping
      @user_company_mapping = UserCompanyMapping.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_company_mapping_params
      params.require(:user_company_mapping).permit(:user_id, :company_id)
    end
end

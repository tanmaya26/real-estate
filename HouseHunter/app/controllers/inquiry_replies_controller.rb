class InquiryRepliesController < ApplicationController
  before_action :set_inquiry_reply, only: [:show, :edit, :update, :destroy]

  # GET /inquiry_replies
  # GET /inquiry_replies.json
  def index
    @inquiry_replies = InquiryReply.all
  end

  # GET /inquiry_replies/1
  # GET /inquiry_replies/1.json
  def show
  end

  # GET /inquiry_replies/new
  def new
    @inquiry_reply = InquiryReply.new
  end

  # GET /inquiry_replies/1/edit
  def edit
  end

  # POST /inquiry_replies
  # POST /inquiry_replies.json
  def create
    @inquiry_reply = InquiryReply.new(inquiry_reply_params)

    respond_to do |format|
      if @inquiry_reply.save
        format.html { redirect_to @inquiry_reply, notice: 'Inquiry reply was successfully created.' }
        format.json { render :show, status: :created, location: @inquiry_reply }
      else
        format.html { render :new }
        format.json { render json: @inquiry_reply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inquiry_replies/1
  # PATCH/PUT /inquiry_replies/1.json
  def update
    respond_to do |format|
      if @inquiry_reply.update(inquiry_reply_params)
        format.html { redirect_to @inquiry_reply, notice: 'Inquiry reply was successfully updated.' }
        format.json { render :show, status: :ok, location: @inquiry_reply }
      else
        format.html { render :edit }
        format.json { render json: @inquiry_reply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inquiry_replies/1
  # DELETE /inquiry_replies/1.json
  def destroy
    @inquiry_reply.destroy
    respond_to do |format|
      format.html { redirect_to inquiry_replies_url, notice: 'Inquiry reply was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inquiry_reply
      @inquiry_reply = InquiryReply.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inquiry_reply_params
      params.require(:inquiry_reply).permit(:user_id, :house_id, :inquiry_id, :message, :company_id)
    end
end

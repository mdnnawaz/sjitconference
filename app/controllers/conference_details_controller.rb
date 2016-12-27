class ConferenceDetailsController < ApplicationController
  before_action :set_conference_detail, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /conference_details
  # GET /conference_details.json
  def index
    @conference_details = ConferenceDetail.where(user_id: current_user.id)
  end

  # GET /conference_details/1
  # GET /conference_details/1.json
  def show
  end

  # GET /conference_details/new
  def new
    @conference_detail = ConferenceDetail.new
  end

  # GET /conference_details/1/edit
  def edit
  end

  # POST /conference_details
  # POST /conference_details.json
  def create
    @conference_detail = ConferenceDetail.new(conference_detail_params)
    @conference_detail.user_id = current_user.id
    respond_to do |format|
      if @conference_detail.save
        format.html { redirect_to @conference_detail, notice: 'Conference detail was successfully created.' }
        format.json { render :show, status: :created, location: @conference_detail }
      else
        format.html { render :new }
        format.json { render json: @conference_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conference_details/1
  # PATCH/PUT /conference_details/1.json
  def update
    respond_to do |format|
      if @conference_detail.update(conference_detail_params)
        format.html { redirect_to @conference_detail, notice: 'Conference detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @conference_detail }
      else
        format.html { render :edit }
        format.json { render json: @conference_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conference_details/1
  # DELETE /conference_details/1.json
  def destroy
    @conference_detail.destroy
    respond_to do |format|
      format.html { redirect_to conference_details_url, notice: 'Conference detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conference_detail
      @conference_detail = ConferenceDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conference_detail_params
      params.require(:conference_detail).permit(:academic_year, :sem, :conference_name, :conference_organizer, :address, :city, :conference_type, :isbn, :paper_title, :one_author_name, :one_department, :one_organization, :one_others, :two_author_name, :two_department, :two_organization, :two_others,  :three_author_name, :three_department, :three_organization, :three_others, :volume_number, :issue_number, :page_start, :page_end, :date_submission, :date_acceptance, :date_published, :paper_abstract, :user_id, :paper)
    end
end

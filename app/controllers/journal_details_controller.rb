class JournalDetailsController < ApplicationController
  before_action :set_journal_detail, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /journal_details
  # GET /journal_details.json
  def index
    @journal_details = JournalDetail.where(user_id: current_user.id)
  end

  # GET /journal_details/1
  # GET /journal_details/1.json
  def show
  end

  # GET /journal_details/new
  def new
    @journal_detail = JournalDetail.new
  end

  # GET /journal_details/1/edit
  def edit
  end

  # POST /journal_details
  # POST /journal_details.json
  def create
    @journal_detail = JournalDetail.new(journal_detail_params)
    @journal_detail.user_id = current_user.id
    respond_to do |format|
      if @journal_detail.save
        @journal_detail.save 
        format.html { redirect_to index_path, notice: 'Journal detail was successfully created.' }
        format.json { render :show, status: :created, location: @journal_detail }
      else
        format.html { render :new }
        format.json { render json: @journal_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /journal_details/1
  # PATCH/PUT /journal_details/1.json
  def update
    respond_to do |format|
      if @journal_detail.update(journal_detail_params)
        format.html { redirect_to @journal_detail, notice: 'Journal detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @journal_detail }
      else
        format.html { render :edit }
        format.json { render json: @journal_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /journal_details/1
  # DELETE /journal_details/1.json
  def destroy
    @journal_detail.destroy
    respond_to do |format|
      format.html { redirect_to journal_details_url, notice: 'Journal detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journal_detail
      @journal_detail = JournalDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def journal_detail_params
      params.require(:journal_detail).permit(:academic_year, :sem, :journal_name, :issn_no, :impact_factor, :journal_type, :paper_title, :one_author_name, :one_dept, :one_organization, :one_others, :two_author_name, :two_dept, :two_organization, :two_others,:three_author_name, :three_dept, :three_organization, :three_others, :vol_no, :issue_no, :page_no, :date_submitted, :date_acceptance, :date_publish, :paper_abstract, :user_id, :paper, :impact_factor_scopus, :page_end)
    end
end

class FundedProjectsController < ApplicationController
  before_action :set_funded_project, only: [:show, :edit, :update, :destroy]

  # GET /funded_projects
  # GET /funded_projects.json
  def index
    @funded_projects = FundedProject.where(user_id: current_user.id)
  end

  # GET /funded_projects/1
  # GET /funded_projects/1.json
  def show
  end

  # GET /funded_projects/new
  def new
    @funded_project = FundedProject.new
  end

  # GET /funded_projects/1/edit
  def edit
  end

  # POST /funded_projects
  # POST /funded_projects.json
  def create
    @funded_project = FundedProject.new(funded_project_params)
    @funded_project.user_id = current_user.id
    respond_to do |format|
      if @funded_project.save
        format.html { redirect_to @funded_project, notice: 'Funded project was successfully created.' }
        format.json { render :show, status: :created, location: @funded_project }
      else
        format.html { render :new }
        format.json { render json: @funded_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /funded_projects/1
  # PATCH/PUT /funded_projects/1.json
  def update
    respond_to do |format|
      if @funded_project.update(funded_project_params)
        format.html { redirect_to @funded_project, notice: 'Funded project was successfully updated.' }
        format.json { render :show, status: :ok, location: @funded_project }
      else
        format.html { render :edit }
        format.json { render json: @funded_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funded_projects/1
  # DELETE /funded_projects/1.json
  def destroy
    @funded_project.destroy
    respond_to do |format|
      format.html { redirect_to funded_projects_url, notice: 'Funded project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_funded_project
      @funded_project = FundedProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def funded_project_params
      params.require(:funded_project).permit(:project_title, :about_project, :funding_agency, :sub_agency, :address, :project_value, :project_submitted_date, :sanctioned_amount, :total_amount_recieved, :date_of_completion, :remarks)
    end
end

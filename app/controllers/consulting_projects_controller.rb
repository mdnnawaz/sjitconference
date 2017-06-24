class ConsultingProjectsController < ApplicationController
  before_action :set_consulting_project, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /consulting_projects
  # GET /consulting_projects.json
  def index
    @consulting_projects = ConsultingProject.where(user_id: current_user.id)
  end

  # GET /consulting_projects/1
  # GET /consulting_projects/1.json
  def show
  end

  # GET /consulting_projects/new
  def new
    @consulting_project = ConsultingProject.new
  end

  # GET /consulting_projects/1/edit
  def edit
  end

  # POST /consulting_projects
  # POST /consulting_projects.json
  def create
    @consulting_project = ConsultingProject.new(consulting_project_params)
    @consulting_project.user_id = current_user.id
    respond_to do |format|
      if @consulting_project.save
        format.html { redirect_to index_path, notice: 'Consulting project was successfully created.' }
        format.json { render :show, status: :created, location: @consulting_project }
      else
        format.html { render :new }
        format.json { render json: @consulting_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consulting_projects/1
  # PATCH/PUT /consulting_projects/1.json
  def update
    respond_to do |format|
      if @consulting_project.update(consulting_project_params)
        format.html { redirect_to @consulting_project, notice: 'Consulting project was successfully updated.' }
        format.json { render :show, status: :ok, location: @consulting_project }
      else
        format.html { render :edit }
        format.json { render json: @consulting_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consulting_projects/1
  # DELETE /consulting_projects/1.json
  def destroy
    @consulting_project.destroy
    respond_to do |format|
      format.html { redirect_to consulting_projects_url, notice: 'Consulting project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consulting_project
      @consulting_project = ConsultingProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consulting_project_params
      params.require(:consulting_project).permit(:project_title, :consulting_name, :address, :contact_person, :mobile, :principle_name, :principle_designation, :principle_company, :principle_address, :principle_mobile, :principle_mail_id, :co_investigator_name, :co_investigator_designation, :co_investigator_company, :co_investigator_address, :co_investigator_mobile, :co_investigator_mail_id, :jrf1_name, :jrf1_designation, :jrf1_organizer, :jrf1_address, :jrf1_mobile, :jrf1_mail_id, :jrf2_name, :jrf2_designation, :jrf2_organizer, :jrf2_address, :jrf2_mobile, :jrf2_mail_id, :jrf3_name, :jrf3_designation, :jrf3_organizer, :jrf3_address, :jrf3_mobile, :jrf3_mail_id, :jrf4_name, :jrf4_designation, :jrf4_organizer, :jrf4_address, :jrf4_mobile, :jrf4_mail_id, :jrf5_name, :jrf5_designation, :jrf5_organizer, :jrf5_address, :jrf5_mobile, :jrf5_mail_id, :user_id)
    end
end

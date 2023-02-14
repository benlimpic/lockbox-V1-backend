class Api::V1::ProjectsController < ApplicationController
  include CurrentUserConcern
  before_action :set_project, only: [:show, :update, :destroy]


  # GET /projects
  def index
      @projects = Project.where(user_id: @current_user.id)
    render json: @projects
  end

  # GET /projects/1
  def show
    render json: @project
  end

  # POST /projects
  def create
    @project = Project.new(project_params)
    

    if @project.save
      render json: @project, status: :created
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projects/1
  def update
    if @project.update(project_params)
      render json: @project
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
  end

  private
  
  def set_project
    @project = Project.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def project_params
    params.require(:project).permit(
      :mac,
      :tmk,
      :sop,
      :kba,
      :matrix,
      :master,
      :date,
      :siteName,
      :siteAddress,
      :siteCity,
      :siteState,
      :siteZip,
      :siteKeyway,
      :siteDescription,
      :siteNotes,
      :contactName,
      :contactPosition,
      :contactEmail,
      :contactPhone,
      :contactDetails, 
      :user_id)
  end
end

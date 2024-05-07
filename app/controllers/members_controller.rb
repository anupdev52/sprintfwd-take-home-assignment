class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy, :update_team, :add_project, :projects]

  # GET /members
  def index
    @members = Member.all
  end

  # GET /members/1
  def show
  end

  # GET /members/new
  def new
    @member = Member.new
  end

  # GET /members/1/edit
  def edit
  end

  # POST /members
  def create
    @member = Member.new(member_params)

    if @member.save
      redirect_to @member, notice: 'Member was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /members/1
  def update
    if @member.update(member_params)
      redirect_to @member, notice: 'Member was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /members/1
  def destroy
    @member.destroy
    redirect_to members_url, notice: 'Member was successfully destroyed.'
  end

  # PUT /members/1/update_team/:team_id
  def update_team
    if @member.update(team_id: params[:team_id])
      redirect_to @member, notice: 'Team was successfully updated for the member.'
    else
      render :edit
    end
  end

  # PUT /members/1/add_project/:project_id
  def add_project
    project = Project.find(params[:project_id])
    @member.projects << project
    redirect_to @member, notice: 'Project was successfully added to the member.'
  end

  # GET /members/1/projects
  def projects
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_member
    @member = Member.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def member_params
    params.require(:member).permit(:first_name, :last_name, :city, :state, :country, :team_id)
  end
end

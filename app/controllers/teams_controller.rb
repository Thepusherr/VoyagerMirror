class TeamsController < ApplicationController
  def index
    @teams = current_user.admin? ? Team.all : current_user.teams
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    @team.owner = current_user

    if @team.save
      redirect_to @team, notice: "Team was successfully created."
    else
      render :new
    end
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])

    if @team.update(team_params)
      redirect_to teams_path, notice: "Team was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy

    redirect_to teams_url, notice: "Team was successfully destroyed."
  end

  private

  def team_params
    params.require(:team).permit(:name, :description)
  end
end

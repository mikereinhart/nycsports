class TeamsController <ApplicationController

	def index
		@teams = Team.all
	end

	def create
		team = Team.new(params['team'])
		if team.save!
			redirect_to teams_path
		else
			redirect_to new_team_path
		end
	end

	def new
		@team = Team.new
		@feeds = Feed.all
	end

	def edit
		@team = Team.find(params[:id])
		@feeds = Feed.all
	end

	def show
		@team = Team.find(params[:id])
		@feeds = Feed.all
	end

	def update
		team = Team.find(params[:id])
		team.update_attributes(params['team'])
		redirect_to teams_path
	end

	def destroy
		Team.find(params[:id]).delete
		redirect_to teams_path
	end

end
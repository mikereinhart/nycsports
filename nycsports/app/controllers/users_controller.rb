class UsersController <ApplicationController

	def index
		@users = User.all
	end

	def create
		user = User.new(params['user'])
		if user.save!
			redirect_to root_path
		else
			redirect_to new_user_path
		end
	end

	def new
		@user = User.new
		@teams = Team.all
		#@session = Session.new
	end

	def edit
		@user = User.find(params[:id])
		@teams = Team.all
	end

	def show
		@user = User.find(params[:id])
		@teams = Team.all
		#@feeds = Feed.all
	end

	def update
		user = User.find(params[:id])
		user.update_attributes(params['user'])
		redirect_to users_path
	end

	def destroy
		User.find(params[:id]).delete
		redirect_to users_path
	end

end
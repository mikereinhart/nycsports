class FeedsController <ApplicationController

	def index
		@feeds = Feed.all
	end

	def create
		feed = Feed.new(params['feed'])
		if feed.save!
			redirect_to feeds_path
		else
			redirect_to new_feed_path
		end
	end

	def new
		@feed = Feed.new
	end

	def edit
		@feed = Feed.find(params[:id])
	end

	def show
		@feed = Feed.find(params[:id])
	end

	def update
		feed = Feed.find(params[:id])
		feed.update_attributes(params['feed'])
		redirect_to feeds_path
	end

	def destroy
		Feed.find(params[:id]).delete
		redirect_to feeds_path
	end

end
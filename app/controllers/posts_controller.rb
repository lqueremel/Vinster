class PostsController < ApplicationController
	def index
		#Everything here will get run when someone goes to /posts
		@posts = Post.all
		@body_class = "posts_pages"
	end
	
	def new
		@post = Post.new
		@body_class = "posts_pages"
	end 

	def create
		@body_class = "posts_pages"
		# Pic.create (:title => 'OMG', :description => 'lol')
		#so in order to make it ignore original data and take the users data we need to figure out how to "suck" 
		#values out of the form.
		Post.create(post_params)

		redirect_to posts_path


	end

	private
	def post_params
		params.require(:post).permit(:title, :description, :image)
	
	end

end

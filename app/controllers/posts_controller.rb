class PostsController < ApplicationController
	def index
		#Everything here will get run when someone goes to /posts
		@posts = Post.all
		@body_class = "post_pages"
	end
	


end

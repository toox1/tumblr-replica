class CommentsController < ApplicationController

def new
	
end

def create
	@post = Post.find(params[:post_id])
	@comment = @post.comments.create(params[:comment].permit(:name, :body))
	redirect_to post_path(@post)
end

def show
	
end

def edit
	
end

def update
	
end

def destroy
	@post = Post.find(params[:post_id])
	@comment = @post.comments.find(params[:id])
	@comment.destroy
	redirect_to post_path(@post)
end

end

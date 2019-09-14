class CommentsController < ApplicationController
	def create
	    @article = Article.find(params[:article_id])
	    @comment = @article.comments.build(comment_params)
	    if @comment.save
	        render :index
	        flash[:success] = "Comment Create!"
	    end
	end

	def destroy
	    @comment = Comment.find(params[:id])
	    if @comment.destroy
	    	flash[:notice] = "Comment Destroy!"
	        render :index
	    end
	end

	private
    def comment_params
	    params.require(:comment).permit(:content, :name, :article_id)
	end
end

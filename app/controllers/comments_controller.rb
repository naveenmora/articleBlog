class CommentsController < ApplicationController
  
	def new
	  @comment = Comment.new(parent_id: params[:parent_id])
	end

  def create
    @article = Article.find params[:article_id]
    @comment = @article.comments.new comment_params
    @comment.user = current_user
    # byebug
    if @comment.save!
    	redirect_to @article, notice: 'Comment was added.'    	
    end
  end

  def show
  	@comment = Comment.find(params[:id])
  	@article = @comment.article
  end

   private

   def comment_params
      params.require(:comment).permit(:parent_id, :message)
   end
end


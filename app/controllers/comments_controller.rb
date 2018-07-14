class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.memonly_id = params[:memonly_id]
    @comment.save

    redirect_to :back
  end

  def destroy
    @comment=Comment.find(params[:id])
    @comment.destroy
    
    redirect_to :back
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end

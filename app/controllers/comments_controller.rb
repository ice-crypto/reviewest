class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy]

  def create
    @comment = Comment.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html {redirect_to videowork_path(params[:comment][:videowork])}
      else
        format.html { redirect_to reviews_path }
      end
    end
  end

  def update
  end

  def destroy
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
      params.require(:comment).permit(:content, :review_id, :user_id)
  end
end

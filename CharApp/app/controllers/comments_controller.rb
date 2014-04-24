class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      redirect_to user_character_url(@comment.author_id, @comment.character_id)
    else
      flash.now[:errors] = @comment.errors.full_messages
      redirect_to user_character_url(@comment.author_id, @comment.character_id)
    end
  end

  def edit

  end

  def destroy
    @comment = Comment.find(params[:id])
    url = user_character_url(@comment.author_id, @comment.character_id)
    @comment.destroy!
    redirect_to url
  end

  def comment_params
    params.require(:comment).permit(:character_id, :author_id, :body)
  end
end

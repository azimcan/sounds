class CommentsController < ApplicationController
	before_action :allowed?, only: [:new, :edit, :create, :destroy]
	def new

  end

  def create
    @sound = Sound.find(params[:sound_id])
    @comment = @sound.comments.new(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to sound_path(@sound), notice: 'Yorum yapildi.'
    else
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit!
  end
end

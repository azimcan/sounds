class SoundsController < ApplicationController
	before_action :select_sound, only: [:show, :edit, :update, :destroy]
  before_action :allowed?, only: [:new, :edit, :create, :destroy]

  def new
    @sound = Sound.new
    @tags = Tag.all
  end

  def create
    @sound = Sound.new(sound_params)
    @sound.user_id = current_user.id
    if @sound.save
      redirect_to sound_path(@sound), notice: 'Ses yüklendi.'
    else
      render :new
    end
  end

  def show
    render :show  
  end

  def edit
    @tags = Tag.all
  end

  def update
    if @sound.update(sound_params)
      redirect_to sound_path(@sound), notice: 'Ses güncellendi.'
    else
      render :edit, layout: 'profile'
    end
  end

  def destroy
    @sound.destroy
  end

  private

  def sound_params
    params.require(:sound).permit!
  end

  def select_sound
    @sound = Sound.find(params[:id])
  end
end

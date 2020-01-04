# Kullanici controller
class UsersController < ApplicationController
  before_action :select_user, only: [:show, :update, :edit, :destroy]
  before_action :allowed?, only: [:edit, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to profile_path(@user), notice: 'Kayıt başarılı.'
    else
      render :new
    end
  end

  def show
    if params[:page].nil? || params[:page] == 'sesler'
      @data = Sound.where(user: @user)
      render layout: 'profile', locals: { page: 'sesler' }
    elsif params[:page] == 'yorumlar'
      @data = Comment.where(user: @user)
      render layout: 'profile', locals: { page: params[:page] }
    end
  end

  def edit
    render layout: 'profile'
  end

  def update
    update_params = user_params
    update_params.delete [:password, :password_confirmation] if update_params.key? :password
    if @user.update(user_params)
      redirect_to profile_path(@user), notice: 'Bilgiler güncellendi.'
    else
      render :edit, layout: 'profile'
    end
  end

  def destroy
    @user.destroy
    logout_path
    redirect_to root_path, notice: 'Hesabiniz silindi'
  end

  private

  def user_params
    params.require(:user).permit!
  end

  def select_user
    @user = User.find_by_username(params[:id])
  end
end

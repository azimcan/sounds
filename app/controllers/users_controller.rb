# Kullanici controller
class UsersController < ApplicationController
  before_action :select_user, only: [:show, :edit, :destroy]
  before_action :allowed?, only: [:edit, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path(params[:id]), notice: 'Kayıt başarılı.'
    else
      render :new
    end
  end

  def show
    render layout: 'profile'
  end

  def edit
    render layout: 'profile'
  end

  def update
    @user = User.find(params[:id])
    print "===>#{@user}"
    update_params = user_params
    update_params.delete [:password, :password_confirmation] if update_params.key? :password
 print "===>#{update_params}"
    if @user.update(user_params)
      redirect_to profil_path(@user), notice: 'Bilgiler güncellendi.'
    else
      render :edit, layout: 'profile'
    end
  end

  def destroy
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit!
  end

  def select_user
    @user = User.find_by_username(params[:id])
    print "===>#{params[:id]}"
  end
end

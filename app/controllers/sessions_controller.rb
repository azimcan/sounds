# Kullanici giris cikis islemleri
class SessionsController < ApplicationController
  def new
    # new.html.erb
  end

  def create
    session[:cart] = []
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      login(user)
      redirect_to profile_path(user.username), notice: 'Oturum açıldı.'
    else
      flash[:error] = 'Email veya parola hatalı.'
      redirect_to login_path
    end
  end

  def create_cart_item
    if session[:cart].include?(params[:sound])
      flash[:error] = "Bu ses sepetinizde mevcut"
      if params[:page] == 'main'
        redirect_to root_path
      elsif params[:page] == 'sound'
        redirect_to sound_path(params[:sound])
      end
    else
      session[:cart] << params[:sound]
      flash[:notice] = "Sepete eklendi"
      if params[:page] == 'main'
        redirect_to root_path
      elsif params[:page] == 'sound'
        redirect_to sound_path(params[:sound])
      end
    end
  end

  def show_cart
    @sounds = []
    session[:cart].each do |id|
      @sounds << Sound.find(id)
    end
    render :show_cart
  end

  def destroy_cart_item
    session[:cart].delete(params[:sound])
    redirect_to show_cart_path, notice: 'Ses sepetten çıkarıldı.'
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Oturum kapatıldı.'
  end
end

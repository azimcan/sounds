# Kullanici giris cikis islemleri
class SessionsController < ApplicationController
  def new
    # new.html.erb
  end

  def create
    user = User.find_by_email(params[:session][:email])
    print user
    if user && user.authenticate(params[:session][:password])
      login(user)
      redirect_to profile_path(user.username), notice: 'Oturum açıldı.'
    else
      flash[:error] = 'Email veya parola hatalı.'
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: 'Oturum kapatıldı.'
  end
end

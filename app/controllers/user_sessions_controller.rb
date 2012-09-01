class UserSessionsController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => :destroy
  def new
   # @user_session = UserSession.new
     render :layout => "default"

  end

  def create
    #@user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Bienvenido a Acotur!"
      redirect_back_or_default "/home/index"
      #redirect_to "http://www.google.com"
    else
      render :action => :new, :layout => "default"
    end
  end

  def destroy
    current_user_session.destroy
    flash[:notice] = "Salida Exitosa!!"
    redirect_back_or_default root_url
  end
end



class UsersController < ApplicationController
 # before_filter :require_no_user, :only => [:new,:create]
  before_filter :require_user, :only => [:edit,:show,:update,:new,:create]

  def new
    @user = User.new
    render :layout => 'default'
  end

  def create
    @user = User.new(params[:user])

    # Saving without session maintenance to skip
    # auto-login which can't happen here because
    # the User has not yet been activated
    if @user.save
      flash[:notice] = "Tu cuenta ha sido Creada."
	redirect_to users_path
    else
      flash[:notice] = "Ha habido un problema al crear tu cuenta."
      render :action => :new, :layout => 'default'
    end

  end

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user # makes our views "cleaner" and more consistent
    if @user.update_attributes(params[:user])
      flash[:notice] = "Cuenta Actualizada!"
      redirect_to account_url
    else
      render :action => :edit
    end
  end
end


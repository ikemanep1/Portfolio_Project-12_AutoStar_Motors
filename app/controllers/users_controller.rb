class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You've successfully signed up!"
      session[:user_id] = @user.id
      redirect_to "/"
    else
      flash[:alert] = "There was a problem signing up."
      redirect_to '/signup'
    end
  end

  def show
    if current_user != nil
      @user = current_user
      render :show
    else
      flash[:alert] = "You must be signed in to view this"
      redirect_to '/signin'
    end
  end

  def edit
    @user = User.find(params[:id])
    render :edit
  end

  def patch
    @user = User.find(params[:id])
    @user.profile_picture.attach(params[:user][:profile_picture])
    redirect_to user_path
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :admin, :profile_picture)
  end
end

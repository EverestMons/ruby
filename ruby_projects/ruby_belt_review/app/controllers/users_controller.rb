class UsersController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def logout
    reset_session
    redirect_to '/users'
  end

  def login
    @user_check = login_params
    @user = User.find_by_email(@user_check[:email]).try(:authenticate, @user_check[:password])
    if @user
      session[:user] = @user
      session[:user_id] = @user.id
      session[:user_name] = @user.first_name.to_s
      session[:user_state] = @user.state
      session[:user_city] = @user.city
      redirect_to root_path
    else
      flash[:notice] = "Cannot find User"
      redirect_to '/users'
    end
  end

  def register
    @user = User.new(register_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      session[:user_name] = @user.first_name.to_s
      session[:user_state] = @user.state
      session[:user_city] = @user.city
      redirect_to root_path
    else
      flash[:notice] = @user.errors.full_messages
      redirect_to '/users'
    end
  end



private
  def register_params
    params.require(:new).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def login_params
    params.require(:user).permit(:email, :password)
  end
end

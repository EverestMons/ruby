class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
      @user = User.new(first_name:params[:first], last_name:params[:last],email:params[:email],country:params[:country],password:params[:password])
      @user.password_confirmation = params[:password_confirmation]
      if @user.valid?
        @user.save
        session[:user] = @user
        redirect_to root_path
      else
        flash[:notice] = @user.errors.full_messages
        redirect_to '/users'
      end

  end

  def destroy
  end

  def login
    @user = User.find_by_email(params[:user_email]).try(:authenticate, params[:user_password].to_s)
    unless !@user
      session[:user] = @user
      redirect_to root_path
    else
      flash[:notice] = "User not found"
      redirect_to '/users'
    end
  end

  def logout
    reset_session
    redirect_to root_path
  end

  def show
  end

  def update
  end


end

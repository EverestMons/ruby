class UsersController < ApplicationController

def index
render json: User.all
end

def new
end

def create
  @user = User.create(name: params[:name], email: params[:email])
  puts @user
  redirect_to '/users'
end

def show
  if params[:id] == "total"
    total
  else
  render json: User.find(params[:id])
end
end

def edit
  @user = User.find(params[:id])
end

def total
  @total = User.all
  @number = @total.length
  render "total"
end
end

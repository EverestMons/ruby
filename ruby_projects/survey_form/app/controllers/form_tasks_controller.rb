class FormTasksController < ApplicationController

  def create
    session[:name] = params[:name]
    session[:location] = params[:location]
    session[:fav] = params[:fav]
    session[:comment] = params[:comment]
    session[:number] += 1
    redirect_to '/results'
  end

  def index
    session[:number] = 0
  end

  def show
  end
end

class UsersController < ApplicationController
  def new
  end

  def edit
  end

  def delete
  end
#the controller will automatically reference a view within a folder of the same name
  def home
    render "home"
  end

  def index
    @users = User.all
  end

  #if you wish to reference another folder, it must be specifically named. like so:
  def list_products
    render "products_view/all"
  end
end

class PropertiesController < ApplicationController

def index
end

def search
  # @search = geocoded_by params[:search]
  redirect_to root_path
end

end

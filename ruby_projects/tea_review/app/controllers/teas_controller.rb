class TeasController < ApplicationController

  def index
    @tea = Tea.all
  end
end

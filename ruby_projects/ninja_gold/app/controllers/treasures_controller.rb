class TreasuresController < ApplicationController

def gold
  @farm = rand(10..20)
  @cave = rand(5..10)
  @house = rand(2..5)
  @casino = rand(-50..50)

end

def world
  gold
  session[:total] = 0
end

def farm_gold
  gold
  session[:total] += @farm
  redirect_to 'world'
end


def give_gold
  if params[:house]
    session[total] += @house
  end
  if params[:cave]
    session[total] += @cave
  end
  if params[:casino]
    session[total] += @casino
  end
  redirect_to 'world'

  end





end

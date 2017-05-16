class TreasuresController < ApplicationController

def gold
  @farm = rand(10..20)
  @cave = rand(5..10)
  @house = rand(2..5)
  @casino = rand(-50..50)

end

def world
  gold
end

def give_gold
  @gold = 0
  if params[:farm]
    @gold += @farm
  end
  if params[:house]
    @gold += @house
  end
  if params[:cave]
    @gold += @cave
  end
  if params[:casino]
    @gold += @casino
  end

  end





end

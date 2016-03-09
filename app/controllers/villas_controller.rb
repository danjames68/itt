class VillasController < ApplicationController
  
  def index
    @villas = [ "Dimora", "Podere Mandrie", "Valdera" ] 
  end
end

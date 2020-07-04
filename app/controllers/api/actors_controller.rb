class Api::ActorsController < ApplicationController
  
  def index
    @actor = Actor.find(4)
    render 'index.json.jb'
  end

end

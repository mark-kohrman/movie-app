class Api::ActorsController < ApplicationController
  
  def index
    @actors = Actor.all
    render 'index.json.jb'
  end

  def show
    @actor = Actor.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      known_for: params[:known_for],
      age: params[:age],
      gender: params[:gender] 
    )
    if @actor.save
      render 'show.json.jb'
    else
      render 'errors.json.jb'
    end
  end

  def update
    @actor = Actor.find_by(id: params[:id])
    @actor.update(
      first_name: params[:first_name] || @actor.first_name,
      last_name: params[:last_name] || @actor.last_name,
      known_for: params[:known_for] || @actor.known_for,
      age: params[:age] || @actor.age,
      gender: params[:gender] || @actor.gender
    )
    @actor.save
    render 'show.json.jb'
  end

  def destroy
    @actor = Actor.find_by(id: params[:id])
    @actor.destroy
    render json: {message: "Your actor has been removed from production."}
  end
end

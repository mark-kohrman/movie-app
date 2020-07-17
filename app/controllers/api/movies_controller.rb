class Api::MoviesController < ApplicationController
  def index
    @movies= Movie.all
    render 'index.json.jb'
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot]
    )
    @movie.save
    render 'show.json.jb'
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.update(
      title: params[:title] || @movie.title,
      year: params[:year] || @movie.year,
      plot: params[:plot] || @movie.plot
    )
    @movie.save
    render 'show.json.jb'
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    render json: {message: "You're movie has been removed from production."}
  end
end

class Api::MoviesController < ApplicationController
  def index
    @all_movies = Movie.all
    @first_two_movies = Movie.limit(2)
    @movie = Movie.find(1)
    render 'index.json.jb'
  end
end

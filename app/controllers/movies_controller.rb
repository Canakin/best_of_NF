class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(movie_params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    #@movie = Movie.create(movie_params)
  end

  def edit
    @movie = Movie.find(movie_params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def movie_params
    require.params(:movie).permit(:title, :imdb_score, :summary, :year, :genre, :country, :actor, :director)
  end
end

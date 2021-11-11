class MoviesController < ApplicationController
  def home
  end

  def index
  @movies = Movie.all
  end

  def show
  @movies = Movie.find(params[:id])
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save

    redirect_to movie_path(@movie)
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :list, :bookmark)
  end


  def new
    @movies = Movie.new
  end

  def edit
    @movie = Movie.find(params[:id])
  end

end

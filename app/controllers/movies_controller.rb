class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :delete, :update]
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def update

    if @movie.update(movie_params)
      redirect_to movies_path
    else
      render :edit
    end
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to @movie
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def delete
    @movie.destroy
    redirect_to movies_path
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :duration, :genre, :description, :trailer)
  end

  def set_movie
    @movie = Movie.find(params[:id])
  end
end

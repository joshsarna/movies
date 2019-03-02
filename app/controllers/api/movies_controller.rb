class Api::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render 'index.json.jbuilder'
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      runtime: params[:runtime]
    )
    @movie.save
    render 'show.json.jbuilder'
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end
end

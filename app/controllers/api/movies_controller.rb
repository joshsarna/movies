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
    begin
       @movie = Movie.find(params[:id])
    rescue
      render json: {message: "Oops, we couldn't find that movie"}
    else
      render 'show.json.jbuilder'
    end
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.runtime = params[:runtime] || @movie.runtime
    @movie.save
    render 'show.json.jbuilder'
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    render json: {message: "Movie has been deleted."}
  end
end

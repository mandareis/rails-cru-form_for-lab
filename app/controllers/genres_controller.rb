class GenresController < ApplicationController
  before_action :find_genre, only: [:show, :edit, :update]

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(set_genre)
    @genre.save
    redirect_to genre_path(@genre)
  end

  def edit
  end

  def update
    @genre.update(set_genre)
    redirect_to genre_path(@genre)
  end

  def show
  end

  private

  def find_genre
    @genre = Genre.find(params[:id])
  end

  def set_genre
    params.require(:genre).permit(:name)
  end
end

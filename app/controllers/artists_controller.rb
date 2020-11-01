class ArtistsController < ApplicationController
  before_action :find_artist, only: [:show, :edit, :update]

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    @artist.save
    redirect_to artists_path(@artist)
  end

  def edit
  end

  def update
    @artist.update(artist_params)
    redirect_to artists_path(@artist)
  end

  def show
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :bio)
  end

  def find_artist
    @artist = Artist.find(params[:id])
  end
end

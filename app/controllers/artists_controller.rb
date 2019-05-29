class ArtistsController < ApplicationController
  def index
		@artists = Artist.all
	end

	def show
		@artist = Artist.find(params[:id])
	end

	def new
		@artist = Artist.new
	end

	def edit
		@artist = Artist.find(params[:id])
	end

  def create
<<<<<<< HEAD
    @artist = Artist.new(artist_params(:name, :bio))
=======
    @artist = Artist.new(artist _params(:name, :bio))
>>>>>>> 349835ac56334b381ad4982c2d650205f564d1c4
    @artist.save
    redirect_to artist_path(@artist)
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params(:name))
    redirect_to artist_path(@artist)
  end

  private

  def artist_params(*args)
    params.require(:artist).permit(*args)
  end
end

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
  
  def create
    @artist = Artist.new(artist_params)
    @artist.find
  end 
  
  def edit 
  end 
  
  def update 
  end 
  
  private 
    
    def artist_params
      @artist.require(:artist)permit
    end 
  
end

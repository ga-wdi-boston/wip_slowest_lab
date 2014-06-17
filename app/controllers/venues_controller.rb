class VenuesController < ApplicationController
  def show
    @venue = Venue.includes(:shows => :users).find(params[:id])
  end
  def index
    @venues = Venue.includes(:shows => :users).page(params[:page]).per(25)
  end
end
class FlatsController < ApplicationController
  before_action :set_flat, only: ['show', 'reate']

  def index
    @flats = Flat.all
  end

  def show
    @booking = Booking.new
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end
end

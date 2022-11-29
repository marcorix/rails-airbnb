class FlatsController < ApplicationController
  before_action :set_flat, only: ['show', 'reate']
    # if params[:query].present?
    #   @movies = @movies.where("title ILIKE ?", "%#{params[:query]}%")
    # end
  def index
    @flats = Flat.all

    if params[:query].present?
      @flats = Flat.where("name ILIKE ?", "%#{params[:query]}%")
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "flats/list", locals: { flats: @flats}, formats: [:html] }
    end
  end

  def show
    @booking = Booking.new
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end
end

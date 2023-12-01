class BookingsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  def index
   render json: Booking.all
  end

  def show
    booking = find_booking
    render json: booking
  end

  def create
    booking = booking.create!(booking_params)
    render json: booking, status: :created
  end

  def update
    booking = find_booking
    booking.update!(booking_params)
    render json: booking
  end

  def destroy
    booking = find_booking
    booking.destroy
    head :no_content
  end

  private

  def find_booking
    Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permint(:status, :check_in, :check_out, :amount, :user_id, :space_id)
  end


  def render_not_found
    render json: { error: "Booking not found"}, status: :not_found
  end

  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors.full_messages  }, status: :unprocessable_entity
  end

end

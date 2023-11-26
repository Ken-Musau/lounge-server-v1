class SpacesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  before_action :authorize
  # skip_before_action :authorize, only: [:index]

  # GET /spaces
  def index
    render json: Space.all
  end

  def show
    space = find_space
    render json: space
  end

  def create
    space =Space.create!(space_params)
    render json: space, status: :created
  end

  def update
    space = find_space
    space.update!(space_params)
    render json: space
  end

  def destroy
    space = find_space
    space.destroy
    head :no_content
  end

  private

  def find_space
    Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:name, :location, :price, :status, :image, :description, :contact, :features, :admin_id)
  end

  def render_not_found
    render json: { error: "Space not found"}, status: :not_found
  end

  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors.full_messages  }, status: :unprocessable_entity
  end

  def authorize
    return render json: { error: "Not Authorized" }, status: :unauthorized unless session.include? :client_id
  end


end

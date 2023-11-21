class ClientsController < ApplicationController
  def index
    render json: Client.all
  end

  def show
    client = Client.find_by(id: params[:id])
    render json: client, status: :ok
  end

  def create
  end

  def update
  end
end

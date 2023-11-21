class AdminsController < ApplicationController
  def index
    admin = Admin.all
    render json: admin
  end

  # def show
  # end

  # def create
  # end

  # def update
  # end
end

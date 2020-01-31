class ParksController < ApplicationController
  def index

  end

  private
  def json_response(object, status = 200)
    render json: object, status: status
  end
end

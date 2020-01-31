class ResidentsController < ApplicationController

  def index
    @residents = {"name": "Joe Shmo", "age": 44, "room
      -number": 233, "fall_risk": true}
    json_response(@patients)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end

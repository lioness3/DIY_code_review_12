class ResidentsController < ApplicationController

  def index
    @residents = Resident.all
    json_response(@residents)
  end




  def show
    @resident = Resident.find(params[:id])
    json_response(@resident)
  end

  def create
    @resident = Resident.create!(resident_params)
    json_response(@resident)
  end

  def update
    @resident = Resident.find(params[:id])
    @resident.update(resident_params)
  end

  def destroy
    @resident = Resident.find(params[:id])
    @resident.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def resident_params
    params.permit(:name, :room_number, :age, :fall_risk )
  end
end

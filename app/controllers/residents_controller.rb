class ResidentsController < ApplicationController

  def index
    @residents = Resident.all
    name = params[:name]
     if @residents.search(name)
       render status: 200, json: @residents
     end
    json_response(@residents)
  end

  def show
    @resident = Resident.find(params[:id])
    json_response(@resident)
  end

  def create
    @resident = Resident.create!(resident_params)
    json_response(@resident, :created)
  end

  def update
    @resident = Resident.find(params[:id])
    if @resident.update!(resident_params)
      render status: 200, json: {
        message: 'Resident information was successfully edited.'
      }
    end
  end

  def destroy
    @resident = Resident.find(params[:id])
    if @resident.destroy
      render status: 200, json: {
        message: 'Resident has been deleted.'
      }
    end
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

  def resident_params
    params.permit(:name, :room_number, :age, :fall_risk )
  end
end

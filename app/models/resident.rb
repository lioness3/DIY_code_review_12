class Resident < ApplicationRecord

  def search
    @resident = Resident.find(params[:name])
  end
end

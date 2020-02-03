class Resident < ApplicationRecord
validates :name, presence: true
validates :room_number, presence: true
validates :age, presence: true
  def search
    @resident = Resident.find(params[:name])
  end
end

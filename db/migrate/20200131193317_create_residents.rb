class CreateResidents < ActiveRecord::Migration[6.0]
  def change
    create_table :residents do |t|
      t.string :name
      t.integer :room_number
      t.integer :age
      t.boolean :fall_risk
    end
  end
end

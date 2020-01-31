class Seed

  def self.begin
    seed = Seed.new
    seed.generate_residents
  end

  def generate_residents
    20.times do |i|
      resident = Resident.create!(
        name: Faker::Name.unique.name ,
        room_number: Faker::Number.unique.within(range: 10..50),
        age: Faker::Number.within(range: 60..100)
        fall_risk: Faker::Boolean.boolean
      )
      puts "Resident #{i}: #{resident.name}, age #{resident.age}, is located in room #{resident.room_number}. mobile stability = #{resident.fall_risk}."
    end
  end
end

Seed.begin

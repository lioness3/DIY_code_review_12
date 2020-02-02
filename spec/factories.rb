require 'factory_bot_rails'

# RSpec.configure do |config|
#   config.include FactoryBot::Syntax::Methods
# end
FactoryBot.define do
  20.times do
  factory(:resident) do
      resident = Resident.create!(
        name: Faker::Name.unique.name ,
        room_number: Faker::Number.unique.within(range: 10..50),
        age: Faker::Number.within(range: 60..100),
        fall_risk: Faker::Boolean.boolean
      )
  end
end
end

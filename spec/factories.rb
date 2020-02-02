require 'factory_bot_rails'

# RSpec.configure do |config|
#   config.include FactoryBot::Syntax::Methods
# end
FactoryBot.define do
  factory(:resident) do
        name { Faker::Name.unique.name }
        room_number  { Faker::Number.unique.within(range: 10..100) }
        age { Faker::Number.within(range: 60..100) }
        fall_risk { Faker::Boolean.boolean }

  end
end

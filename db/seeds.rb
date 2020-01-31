class Seed

  def self.begin
    seed = Seed.new
    seed.generate_residents
  end

  def generate_residents
    20.times do |i|
      resident = Quote.create!(
        author: Faker::Book.author,
        content: Faker::Movie.quote
      )
      puts "Resident #{i}: Name is #{quote.author} and quotation is '#{quote.content}'."
    end
  end
end

Seed.begin

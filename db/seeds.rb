class Seed
  def self.start
    seed = Seed.new
    seed.generate_parks
  end

  def generate_parks
    parks = ["Crater Lake", "Yellow Stone", "Yosmite", "Joshua tree"]

    5.times do |i|
      park = Park.create!(
        name: parks.shuffle.pop,
        type_of_park: "National Park"
      )
      puts "Park #{i}: Name is #{park.name} and type is #{park.type_of_park}"
    end
  end
end

Seed.start

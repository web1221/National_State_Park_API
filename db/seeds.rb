class Seed

  def.start
    seed = Seed.new
    seed.generate_parks
  end

  def generate_parks
    20.times do |i|
      park = Park.create!(
        name: #content here,
        type:
      )
      puts "Park #{i}: Name is #{park.name} and type is #{park.type}"
    end
  end
end

Seed.start

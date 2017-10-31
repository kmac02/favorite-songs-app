require 'faker'

10.times do
  Song.create!(title: Faker::Hipster.sentence(3), artist: Faker::RockBand.name)
end

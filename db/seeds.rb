# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  Restaurant.create(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    phone_number: Faker::Company.duns_number,
    category: %w(japanese french belgian chinese italian).sample
    )
end

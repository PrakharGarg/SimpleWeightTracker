# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

9.downto(1) do |i|
  product = Weight.new(weight: (100 + i), user_id: 3)
  product.created_at = i.days.ago,
  product.save!
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)x

require 'seed'

seed_file = Rails.root.join('db', 'seeds/legislators.yml')
data = YAML::load_file(seed_file)

data.each do |seed|
    o = Seed.new(seed)
    b = o.initial_parse
end

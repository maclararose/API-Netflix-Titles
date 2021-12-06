# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

# csv_text = File.read('db/data/netflix_titles.csv')
# csv = CSV.parse(csv_text, :headers => true)
# csv.each do |row|
#   Moulding.create!(row.to_hash)
# end

parsed_file = CSV.read('db/data/netflix_titles.csv', col_sep: ";")
keys = parsed_file.first.map(&:to_sym)
list = parsed_file.drop(1).map { |line| Hash[keys.zip(line)] }
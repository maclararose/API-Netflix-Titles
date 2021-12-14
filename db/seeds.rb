require 'csv'

csv_netflix = File.read(Rails.root.join('db/netflix_titles.csv'))
netflix_titles = CSV.parse(csv_netflix, headers: true, encoding: 'ISO-8859-1')

netflix_titles.each do |row|
  NetflixTitle.create(
    id_csv: row['show_id'],
    title: row['title'],
    genre: row['type'],
    year: row['release_year'],
    country: row['country'],
    published_at: row['date_added'],
    description: row['description']
  )
end
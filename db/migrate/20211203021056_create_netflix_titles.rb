class CreateNetflixTitles < ActiveRecord::Migration[6.1]
  def change
    create_table :netflix_titles do |t|
      t.string :title
      t.string :genre
      t.string :year
      t.string :country
      t.string :published_at
      t.string :description

      t.timestamps
    end
  end
end

class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
    	t.string :title
    	t.integer :year
    	t.string	:imdbid
    	t.belongs_to :user
    end
  end
end

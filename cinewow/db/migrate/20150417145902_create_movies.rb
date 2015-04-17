class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
    	t.string :title
    	t.integer :year
    	t.belongs_to :users
    end
  end
end

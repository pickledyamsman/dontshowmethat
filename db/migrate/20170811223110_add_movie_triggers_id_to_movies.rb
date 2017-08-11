class AddMovieTriggersIdToMovies < ActiveRecord::Migration[5.1]
  def change
  	add_column :movies, :movie_trigger_id, :integer
  end
end

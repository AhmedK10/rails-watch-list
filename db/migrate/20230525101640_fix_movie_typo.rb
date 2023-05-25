class FixMovieTypo < ActiveRecord::Migration[7.0]
  def change
    #rename_column(table_name, column_name, new_column_name
    rename_column :movies, :post_url, :poster_url
  end
end

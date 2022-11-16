class FixTypo < ActiveRecord::Migration[7.0]
  def change
    rename_column :reviews, :ratingt, :rating
  end
end

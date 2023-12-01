class RemoveCientIdFromReviews < ActiveRecord::Migration[7.1]
  def change
    remove_column :reviews, :client_id
  end
end

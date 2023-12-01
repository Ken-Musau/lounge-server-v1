class RemoveAdminIdFromSpaces < ActiveRecord::Migration[7.1]
  def change
    remove_column :spaces, :admin_id

  end
end

class ChangeRoletoInteger < ActiveRecord::Migration[7.1]
  def change
    change_column :users, :role, :integer, using: 'CAST(role AS integer)', default: 0
  end
end

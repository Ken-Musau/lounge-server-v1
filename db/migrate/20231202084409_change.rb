class Change < ActiveRecord::Migration[7.1]
  def up
    change_column :bookings, :check_in, 'timestamp USING CAST(check_in AS timestamp without time zone)'
    change_column :bookings, :check_out, 'timestamp USING CAST(check_out AS timestamp without time zone)'
  end

  def down
    change_column :bookings, :check_in, :string
    change_column :bookings, :check_out, :string
  end
end

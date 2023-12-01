class RemoveSpaceIdFromBooking < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :client_id
  end
end

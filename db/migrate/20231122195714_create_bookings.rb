class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.string :status
      t.string :check_in
      t.string :check_out
      t.belongs_to :space, null: false, foreign_key: true
      t.belongs_to :client, null: false, foreign_key: true
      t.string :amount

      t.timestamps
    end
  end
end

class CreateSpaces < ActiveRecord::Migration[7.1]
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :location
      t.string :price
      t.string :status
      t.string :image
      t.string :description
      t.string :contact
      t.string :features
      t.belongs_to :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end

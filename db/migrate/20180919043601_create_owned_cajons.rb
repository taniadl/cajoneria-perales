class CreateOwnedCajons < ActiveRecord::Migration[5.2]
  def change
    create_table :owned_cajons do |t|
      t.string :name
      t.integer :price
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

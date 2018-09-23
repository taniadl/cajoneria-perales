class CreateShoppingcarts < ActiveRecord::Migration[5.2]
  def change
    create_table :shoppingcarts do |t|
      t.references :client, foreign_key: true
      t.timestamps
    end
  end
end

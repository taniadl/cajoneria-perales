class CreateCajons < ActiveRecord::Migration[5.2]
  def change
    create_table :cajons do |t|
      t.string :name
      t.integer :price
      t.references :calcu, foreign_key: true

    end
  end
end

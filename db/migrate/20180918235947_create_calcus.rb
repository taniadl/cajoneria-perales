class CreateCalcus < ActiveRecord::Migration[5.2]
  def change
    create_table :calcus do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end

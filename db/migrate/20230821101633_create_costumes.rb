class CreateCostumes < ActiveRecord::Migration[7.0]
  def change
    create_table :costumes do |t|
      t.string :name
      t.text :description
      t.string :size
      t.integer :price
      t.string :city
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

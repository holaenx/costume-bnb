class CreateRents < ActiveRecord::Migration[7.0]
  def change
    create_table :rents do |t|
      t.date :begin_date
      t.date :end_date
      t.boolean :status
      t.references :user, null: false, foreign_key: true
      t.references :costume, null: false, foreign_key: true

      t.timestamps
    end
  end
end

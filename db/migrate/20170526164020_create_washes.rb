class CreateWashes < ActiveRecord::Migration[5.1]
  def change
    create_table :washes do |t|
      t.integer :price
      t.integer :washable_id
      t.string :washable_type

      t.timestamps
    end
  end
end

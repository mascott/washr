class CreateTrucks < ActiveRecord::Migration[5.1]
  def change
    create_table :trucks do |t|
      t.string :license_plate
      t.boolean :tailgate_up, default: true
      t.boolean :muddy, default: false

      t.timestamps
    end
  end
end

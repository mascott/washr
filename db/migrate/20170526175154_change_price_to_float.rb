class ChangePriceToFloat < ActiveRecord::Migration[5.1]
  def change
    change_column :washes, :price, :float
  end
end

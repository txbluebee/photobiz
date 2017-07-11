class EditOrderTables < ActiveRecord::Migration[5.1]
  def change
    remove_column :orders, :total_price_decimal, :string
    add_column :orders, :total_price, :decimal
  end
end

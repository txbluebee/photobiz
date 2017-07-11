class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :status
      t.references :account, foreign_key: true
      t.string :total_price_decimal

      t.timestamps
    end
  end
end

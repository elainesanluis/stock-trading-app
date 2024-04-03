class AddTransactionRecordsTable < ActiveRecord::Migration[7.1]
  def change
    create_table :transaction_records do |t|
      t.references :stock, foreign_key: true
      t.decimal :average_price, precision: 8, scale: 2
      t.integer :quantity

      t.timestamps
    end
  end
end

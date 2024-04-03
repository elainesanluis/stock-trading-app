class UserStock < ActiveRecord::Migration[7.1]
  def change
    create_table :user_stocks do |t|
      t.references :user, foreign_key: true
      t.references :stock, foreign_key: true
      t.decimal :average_price, precision: 8, scale: 2
      t.integer :total_shares

      t.timestamps
    end
  end
end

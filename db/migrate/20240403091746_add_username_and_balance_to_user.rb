class AddUsernameAndBalanceToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :username, :string
    add_column :users, :balance, :decimal, precision: 15, scale: 2, default: "5000.00"
  end
end

class AddDetailsToStocks < ActiveRecord::Migration[7.1]
  def change
    add_column :stocks, :first_name, :string
    add_column :stocks, :last_name, :string
    add_column :stocks, :email, :string
  end
end

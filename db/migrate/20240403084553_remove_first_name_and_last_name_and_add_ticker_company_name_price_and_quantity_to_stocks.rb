class RemoveFirstNameAndLastNameAndAddTickerCompanyNamePriceAndQuantityToStocks < ActiveRecord::Migration[7.1]
  def change
    remove_column :stocks, :first_name, :string
    remove_column :stocks, :last_name, :string
    add_column :stocks, :ticker, :string, null: false, limit: 10
    add_column :stocks, :company_name, :string, null: false
    add_column :stocks, :price, :decimal, precision: 8, scale: 2, null: false
    add_column :stocks, :quantity, :integer, null: false
  end
end

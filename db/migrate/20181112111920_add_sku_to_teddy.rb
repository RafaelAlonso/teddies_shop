class AddSkuToTeddy < ActiveRecord::Migration[5.2]
  def change
    add_column :teddies, :sku, :string
  end
end

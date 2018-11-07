class AddSubtotalToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :subtotal, :decimal, precision: 5, scale: 2, default: 0
    add_column :orders, :tax, :decimal, precision: 5, scale: 2, default: 0
    add_column :orders, :shipping, :decimal, precision: 5, scale: 2, default: 0
  end
end

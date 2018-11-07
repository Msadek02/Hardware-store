class AddQuantityToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :quantity, :integer
    add_column :line_items, :unit_price, :decimal, precision: 5, scale: 2, default: 0
    add_column :line_items, :total_price, :decimal, precision: 5, scale: 2, default: 0
  end
end

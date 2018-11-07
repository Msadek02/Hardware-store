class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true, foreign_key: true
      t.decimal :total, precision: 5, scale: 2, default: 0

      t.timestamps null: false
    end
  end
end

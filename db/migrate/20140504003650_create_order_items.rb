class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :order_id
      t.integer :quantity
      t.string :name
      t.decimal :unit_cost
      t.decimal :unit_sell
      t.boolean :ordered
      t.integer :distributor_id

      t.timestamps
    end
  end
end

class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :date
      t.string :description
      t.integer :customer_id
      t.string :status_id

      t.timestamps
    end
  end
end

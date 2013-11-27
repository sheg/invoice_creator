class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :invoice_id
      t.string :description
      t.integer :quantity
      t.decimal :price
      t.timestamps
    end
    add_index :items, :invoice_id
  end
end

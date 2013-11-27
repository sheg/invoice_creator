class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :description
      t.decimal :total_amount

      t.timestamps
    end
  end
end

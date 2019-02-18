class CreateWarehouses < ActiveRecord::Migration[5.2]
  def change
    create_table :warehouses do |t|
      t.string :title
      t.decimal :price
      t.integer :amount
      t.timestamp :release_date
      t.string :issue_id
    end
  end
end

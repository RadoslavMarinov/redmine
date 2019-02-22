class Warehouse < ActiveRecord::Base

  validates :title, uniqueness: true

  def change_table
    add_column :Warehouse, null: false
  end
end

class Warehouse < ActiveRecord::Base
    def change_table
        add_column :Warehouse, null: false
      end
end

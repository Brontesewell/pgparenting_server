class AddColumnToUsers < ActiveRecord::Migration[6.0]
    def change
      add_column :users, :subscribe, :string
    end
  end
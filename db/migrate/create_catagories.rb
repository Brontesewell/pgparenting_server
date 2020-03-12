class CreateCatagories < ActiveRecord::Migration[6.0]
    def change
      create_table :users do |t|
        t.string :catagory_name
        t.string :image
        t.string :description
        t.string :catagory_title
  
        t.timestamps
      end
    end
  end
  
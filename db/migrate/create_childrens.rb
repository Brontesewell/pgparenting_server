class CreateChildrens < ActiveRecord::Migration[6.0]
    def change
      create_table :childrens do |t|
        t.string :name
        t.date :birthday
        t.string :gender
        t.belongs_to :user
  
        t.timestamps
      end
    end
  end
  
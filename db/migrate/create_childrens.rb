class CreateChildrens < ActiveRecord::Migration[6.0]
    def change
      create_table :users do |t|
        t.string :name
        t.string :age
        t.string :gender
  
        t.timestamps
      end
    end
  end
  
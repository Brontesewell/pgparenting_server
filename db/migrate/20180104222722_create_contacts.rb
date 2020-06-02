class CreateContacts < ActiveRecord::Migration[5.1]
    def change
      create_table :contacts do |t|
        t.string :f_name
        t.string :l_name
        t.string :email
        t.text :description
        t.belongs_to :user

  
        t.timestamps
      end
    end
  end
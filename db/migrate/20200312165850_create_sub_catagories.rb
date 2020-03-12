class CreateSubCatagories < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_catagories do |t|
      t.string :title
      t.belongs_to :catagory
      
      t.timestamps
    end
  end
  end
  
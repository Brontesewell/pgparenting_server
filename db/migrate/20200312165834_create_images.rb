class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :image_url
      t.belongs_to :course
  
      t.timestamps
    end
  end
  end
  
class CreateImages < ActiveRecord::Migration[6.0]
def change
  create_table :users do |t|
    t.text :image_url
    t.belongs_to :course
    t.timestamps
  end
end
end

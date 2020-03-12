class CreateCourses < ActiveRecord::Migration[6.0]
    def change
      create_table :courses do |t|
        t.text :content
        t.string :title
        t.string :quote
        t.string :course_image
        t.belongs_to :sub_catagories
        t.belongs_to :catagories
        
  
        t.timestamps
      end
    end
  end
  
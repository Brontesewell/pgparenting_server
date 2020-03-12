class CreateCourses < ActiveRecord::Migration[6.0]
    def change
      create_table :users do |t|
        t.text :content
        t.string :title
        t.string :quote
        t.string :course_image
        
  
        t.timestamps
      end
    end
  end
  
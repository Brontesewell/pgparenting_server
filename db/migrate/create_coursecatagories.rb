class CreateCourseCatagories < ActiveRecord::Migration[6.0]
    def change
      create_table :users do |t|
        t.string :course_id
        t.string :catagory_id
  
        t.timestamps
      end
    end
  end
  
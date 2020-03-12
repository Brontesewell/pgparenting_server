class CreateCollections < ActiveRecord::Migration[6.0]
    def change
      create_table :collections do |t|
        t.belongs_to :user
        t.belongs_to :course
  
        t.timestamps
      end
    end
  end
  
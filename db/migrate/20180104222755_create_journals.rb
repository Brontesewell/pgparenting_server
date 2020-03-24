class CreateJournals < ActiveRecord::Migration[5.1]
    def change
      create_table :journals do |t|
        t.text :text
        t.belongs_to :kid
        t.datetime :date_now

        t.timestamps
      end
    end
  end
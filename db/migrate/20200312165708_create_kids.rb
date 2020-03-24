class CreateKids < ActiveRecord::Migration[6.0]
  def change
    create_table :kids do |t|
      t.string :name
      t.date :birthday
      t.string :gender
      t.belongs_to :user
      t.integer :behaviour_progress
      t.integer :behaviour_score
      t.integer :sport_progress
      t.integer :sport_score
      t.integer :academic_progress
      t.integer :academic_score
      t.integer :character_progress
      t.integer :character_score

      t.timestamps
    end
  end
end

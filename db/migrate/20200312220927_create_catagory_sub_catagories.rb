class CreateCatagorySubCatagories < ActiveRecord::Migration[6.0]
  def change
    create_table :catagory_sub_catagories do |t|
      t.belongs_to :sub_catagory
      t.belongs_to :catagory

    end
  end
end

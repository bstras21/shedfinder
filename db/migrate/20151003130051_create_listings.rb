class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :details
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :title

      t.timestamps null: false
      t.belongs_to :user, index: true
    end
  end
end

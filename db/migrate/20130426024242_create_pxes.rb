class CreatePxes < ActiveRecord::Migration
  def change
    create_table :pxes do |t|
      t.string :title
      t.string :user_name
      t.string :image_url
      t.text :description
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps

      t.timestamps
    end
  end
end

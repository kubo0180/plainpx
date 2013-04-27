class AddImageToPxes < ActiveRecord::Migration
  def self.up
    add_attachment :pxes,  :image
  end
     
  def self.down
    remove_attachment :pxes,  :image
  end
end

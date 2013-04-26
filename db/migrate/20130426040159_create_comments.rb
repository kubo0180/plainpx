class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :px
      t.text :body
      t.string :commenter

      t.timestamps
    end
    add_index :comments, :px_id
  end
end

class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user
      t.references :program
      t.text :comment
      t.string :tag_line

      t.timestamps null: false
    end
  end
end

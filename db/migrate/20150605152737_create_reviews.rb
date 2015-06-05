class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :user, index: true, foreign_key: true
      t.references :program, index: true, foreign_key: true
      t.text :body
      t.integer :rating
      t.string :title

      t.timestamps null: false
    end
  end
end

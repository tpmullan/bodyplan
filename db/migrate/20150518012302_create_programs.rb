class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.references :trainer, index: true, foreign_key: true
      t.string :name
      t.integer :rating
      t.attachment :overview_video
      t.text :overview_text
      t.attachment :cover_photo
      t.integer :price
      t.string :difficulty
      t.string :equipment_required
      t.integer :session_intervals
      t.boolean :trending

      t.timestamps null: false
    end
  end
end

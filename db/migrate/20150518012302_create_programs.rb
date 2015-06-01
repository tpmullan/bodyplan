class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.references :trainer, index: true, foreign_key: true, references: :users
      t.string :name
      t.decimal :rating
      t.attachment :overview_video
      t.text :overview_text
      t.attachment :cover_photo
      t.decimal :price
      t.string :difficulty
      t.string :equipment_required
      t.integer :session_intervals
      t.boolean :trending, default: false

      t.timestamps null: false
    end
  end
end

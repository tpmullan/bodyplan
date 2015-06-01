class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.references :trainer, references: :users, index: true
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

    add_foreign_key :programs, :users, column: :trainer_id
  end
end

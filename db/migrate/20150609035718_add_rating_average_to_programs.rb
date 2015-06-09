class AddRatingAverageToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :star5, :integer
    add_column :programs, :star4, :integer
    add_column :programs, :star3, :integer
    add_column :programs, :star2, :integer
    add_column :programs, :star1, :integer
    add_column :programs, :star5percent, :decimal
    add_column :programs, :star4percent, :decimal
    add_column :programs, :star3percent, :decimal
    add_column :programs, :star2percent, :decimal
    add_column :programs, :star1percent, :decimal
  end
end

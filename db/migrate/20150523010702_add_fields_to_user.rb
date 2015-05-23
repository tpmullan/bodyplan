class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :user_type, :integer
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :bio, :text
    add_column :users, :profile_pic, :attachment
    add_column :users, :phone, :string
    add_column :users, :website, :string
    add_column :users, :sex, :string
    add_column :users, :goal, :string
    add_column :users, :ideal_session, :integer
    add_column :users, :ideal_body_type, :string
    add_column :users, :fitness_level, :string
    add_column :users, :equipment_access, :string
  end
end

class Program < ActiveRecord::Base
  belongs_to :trainer, class_name: 'User'
  has_many :users, through: :subscriptions
  has_many :comments, dependent: :destroy
  has_many :subscriptions
end

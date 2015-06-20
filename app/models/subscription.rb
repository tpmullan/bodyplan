class Subscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :program

  validates :user_id, uniqueness: { scope: :program_id }
  validates :program_id, uniqueness: { scope: :user_id }

end

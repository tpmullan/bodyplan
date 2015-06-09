class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :program

  validates :program, presence: true
  validates :user, presence: true

  after_save :update_program

  def update_program
    program.update_ratings  
  end
end

class Program < ActiveRecord::Base
  belongs_to :trainer, class_name: 'User'
  has_many :users, through: :subscriptions
  has_many :comments, dependent: :destroy
  has_many :subscriptions

  scope :trending, -> { where( trending: true ).limit(6) }

  has_attached_file :cover_photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "program.jpg"
  has_attached_file :overview_video

  validates_attachment_content_type :cover_photo, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :overview_video, :content_type => /\Avideo\/.*\Z/

end

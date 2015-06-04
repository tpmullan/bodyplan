class Program < ActiveRecord::Base
  belongs_to :trainer, class_name: 'User'
  has_many :users, through: :subscriptions
  has_many :comments, dependent: :destroy
  has_many :subscriptions

  scope :trending, -> { where( trending: true ).limit(6) }

  has_attached_file :cover_photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "program.jpg"
  has_attached_file :overview_video, styles: {
    mp4: { geometry: "640x480", format: 'mp4' },
    webm: { geometry: "640x480", format: 'webm' },
    thumb: { geometry: "600x400", format: 'jpg', time: 10 }
  }, processors: [:transcoder], default_url: 'big_buck_bunny.mp4'

  validates_attachment_content_type :cover_photo, :content_type => /\Aimage\/.*\Z/
  validates_attachment_content_type :overview_video, :content_type => /\Avideo\/.*\Z/

end

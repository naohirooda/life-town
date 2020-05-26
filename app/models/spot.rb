class Spot < ApplicationRecord
  has_many :comment
  has_many :good
  belongs_to :user

  validates :kind, presence: true, unless: :image?

  mount_uploader :image, ImageUploader

end

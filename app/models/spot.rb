class Spot < ApplicationRecord
  has_many :comments
  has_many :goods
  belongs_to :user

  validates :kind, presence: true, unless: :image?
 

end
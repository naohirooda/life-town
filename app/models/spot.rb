class Spot < ApplicationRecord
  has_many :comment
  has_many :good
  belongs_to :user
end

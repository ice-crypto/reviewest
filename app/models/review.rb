class Review < ApplicationRecord
  validates :title,
    presence: true
  validates :body,
    presence: true
  validates :star,
    numericality: { only_integer: true}
  belongs_to :videowork
  belongs_to :user
  has_many :comments
end

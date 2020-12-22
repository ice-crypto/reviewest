class Review < ApplicationRecord
  belongs_to :videowork
  belongs_to :genre
  belongs_to :user
end

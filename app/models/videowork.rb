class Videowork < ApplicationRecord
  has_and_belongs_to_many :stakeholders
end

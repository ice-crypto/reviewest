class Stakeholder < ApplicationRecord
  has_and_belongs_to_many :videoworks
end

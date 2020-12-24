class UserRelation < ApplicationRecord
  belongs_to :user
  belongs_to :follow, class_name: 'User'
end
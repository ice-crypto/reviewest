class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable

  has_many :reviews
  has_many :comments
  has_many :user_relations
  has_many :followings, through: :user_relations, source: :follow
  has_many :reverses_of_relation, class_name: 'UserRelation', foreign_key: 'follow_id'
  has_many :followers, through: :reverses_of_relation, source: :user
end

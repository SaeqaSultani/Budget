class User < ApplicationRecord
  has_many :categories, foreign_key: :user_id, dependent: :destroy
  has_many :groups, foreign_key: :user_id, dependent: :destroy

  validates :name, presence: true
end

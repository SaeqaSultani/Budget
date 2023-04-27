class Category < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: :user_id
  has_many :group_categories, foreign_key: :category_id, dependent: :destroy

  validates :name, presence: true
  validates :amount, presence: true
end

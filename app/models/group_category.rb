class GroupCategory < ApplicationRecord
  belongs_to :group, class_name: 'Group', foreign_key: :group_id
  belongs_to :category, class_name: 'Category', foreign_key: :category_id

end

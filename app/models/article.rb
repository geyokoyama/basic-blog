class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  self.per_page = 5
end

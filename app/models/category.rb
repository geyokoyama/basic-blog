class Category < ApplicationRecord
  validates :name, presence: true,
                    uniqueness: { case_sensitive: false },
                    length: { minimum: 3, maximum: 25 }
  self.per_page = 5
end

class Article < ApplicationRecord
	belongs_to :user
	has_many :comments
  validates :name, presence: true,
                    length: { minimum: 5 }
end

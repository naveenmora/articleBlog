class Article < ApplicationRecord
	belongs_to :user
	has_many :comments
  validates :name, presence: true,
                    length: { minimum: 5 }
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end

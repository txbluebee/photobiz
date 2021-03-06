class Product < ApplicationRecord
  validates :name, :presence => true
  has_many :comments
  has_many :order_items
  has_many :favorites

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end

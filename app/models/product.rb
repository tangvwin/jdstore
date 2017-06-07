class Product < ApplicationRecord
has_many :comments
 mount_uploader :image, ImageUploader

has_many :photos
 accepts_nested_attributes_for :photos

has_many :favorites
has_many :users, through: :favorites, source: :user

acts_as_list

 validates_numericality_of :discount, :greater_than => 0, :less_than => 100, :allow_blank => true

end

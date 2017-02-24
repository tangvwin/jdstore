class Product < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :reviews
  belongs_to :category

  acts_as_votable


end

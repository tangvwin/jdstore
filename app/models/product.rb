class Product < ApplicationRecord
has_many :comments
 mount_uploader :image, ImageUploader

acts_as_list

 validates_numericality_of :discount, :greater_than => 0, :less_than => 100, :allow_blank => true

end

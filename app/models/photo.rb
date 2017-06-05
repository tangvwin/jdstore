class Photo < ApplicationRecord
  belongs_to :product, optional: true

  mount_uploader :avatar, AvatarUploader



end

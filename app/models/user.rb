class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :profile, AvatarUploader

has_many :favorites
has_many :products, through: :favorites, source: :product

def admin?
  is_admin
end

def is_favorite_of?(product)
  participated_products.include?(product)
end


def join!(product)
  participated_products << product
end
def quit!(product)
  participated_products.delete(product)
end

has_many :orders

end

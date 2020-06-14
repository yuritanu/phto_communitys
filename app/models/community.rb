class Community < ApplicationRecord
  has_many :users
  has_many :comments
  has_many :photos
  belongs_to :categorie
end

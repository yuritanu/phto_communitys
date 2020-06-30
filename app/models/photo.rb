class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :categorie
  has_many :comments
end

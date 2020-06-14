class Photo < ApplicationRecord
  belongs_to :community
  belongs_to :user
  belongs_to :categorie
end

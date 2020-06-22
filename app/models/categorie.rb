class Categorie < ApplicationRecord
  has_many :photos
  has_ancestry
end

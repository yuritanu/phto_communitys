class TopsController < ApplicationController

  def index
    @parents = Categorie.where(ancestry: nil).order("id ASC")

  end
end

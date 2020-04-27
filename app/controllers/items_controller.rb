class ItemsController < ApplicationController
  def index
    @parents = Category.where('ancestry is null')
    @ladies = Category.where(ancestry: 1);
  end
end

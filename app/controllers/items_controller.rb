class ItemsController < ApplicationController
  def index
    @parents = Category.all.order("id ASC").limit(13)
    @lady = Category.find(1)
    @lady_children = @lady.children
    @ladies_item = Category.where(ancestry: "1/14")
    gon.names = @parents
  end
end

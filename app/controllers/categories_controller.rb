class CategoriesController < ApplicationController
  def index
    @parents = Category.all.order("id ASC").limit(13)
    # @lady = Category.find(1)
    # @lady_children = @lady.children
    # @ladies_item = Category.where(ancestry: "1/14") 

    # @ladyChildren = @lady.children
  end

  def show
    params_id = params[:id].to_i - 1
    @parents = Category.all.order("id ASC").limit(13)
    @parent = @parents[params_id]
  end
end
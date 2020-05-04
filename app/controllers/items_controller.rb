class ItemsController < ApplicationController
  def index
    @parents = Category.all.order("id ASC").limit(13)
    @lady = Category.find(1)
    @lady_children = @lady.children
    @ladies_item = Category.where(ancestry: "1/14")
    gon.names = @parents
  end

  def new
    @item = Item.new
    @parents = Category.all.limit(13)
    @categories = Category.all
    @children = @parents.map {|p| p.children.map {|c| Array.new << c.children}}
    gon.children = @parents.map {|p| Array.new << p.children}
    gon.grandchildren = @children
  end

  def create
    @item = Item.new(item_params)
    @item.save!
    redirect_to root_path
  end

  def show
    @item = Item.find(params[:id])
  end

  private 
  def item_params
    params.require(:item).permit(:name, :description, :bland, :size, :condition, :delivery_fee, :delivery_day, :price, :category_id).merge(user_id: current_user.id)
  end
end
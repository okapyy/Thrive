class ItemsController < ApplicationController
  before_action :set_category
  before_action :set_items, only:[:show, :edit, :update, :destroy]
  def index
    @parents = Category.all.order("id ASC").limit(13)
    @lady = Category.find(1)
    @lady_children = @lady.children
    @ladies_item = Category.where(ancestry: "1/14")
    gon.names = @parents
  end

  def top
    # @ladys = Item.where(category_id: 1)
    # @mens = Item.where(category_id: 2)
    # @electrical = Item.where(category_id: 8)
    # @hobby = Item.where(category_id: 6)
  end

  def set_category
    @parents = Category.parent
    gon.categories = @category
    @lady = Category.find(1)
    @lady_children = @lady.children
    # @lady_child = @lady.children 
    gon.lady_children = @lady_children
    gon.indirects = @lady_children[0].children
  end
  
  def show
  end

  def edit
  end

  def update
    if @item.update(item_params)
      redirect_to item_path(@item.id)
    else
      render :edit
    end
  end

  def destroy
    if @item.destroy
      redirect_to root_path
    else
      render :edit
    end
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :description, :bland, :size, :condition, :delivery_fee, :delivery_day, :price, )
  end

  def set_items
    @item = Item.find(params[:id])
  end
  
end

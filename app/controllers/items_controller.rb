class ItemsController < ApplicationController
  before_action :set_items, only:[:show, :edit, :update, :destroy]
  before_action :set_category, only:[:index, :new, :create, :edit]
  
  def index
    @items = Item.where.not(is_deleted: 1).order(created_at: "DESC").limit(10)
  end

  def new
    @item = Item.new
    @item.item_images.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path, notice: '商品の出品に成功しました'
    else
      flash.now[:alert] = '出品に失敗しました'
      render :new
    end
  end

  def top  
    @ladys= Item.where(category_id: 158..336).where.not(is_deleted: 1).order(created_at: "DESC").limit(10)
    @mens= Item.where(category_id: 337..466).where.not(is_deleted: 1).order(created_at: "DESC").limit(10)
    @electricals = Item.where(category_id: 953..1027).where.not(is_deleted: 1).order(created_at: "DESC").limit(10)
    @hobbys = Item.where(category_id: 764..864).where.not(is_deleted: 1).order(created_at: "DESC").limit(10)
  end
  
  def show
    @images = ItemImage.where(item_id: @item.id)
    @image = ItemImage.where(item_id: @item.id).first
    @beforeitem = Item.find_by(id: @item.id - 1) 
    @nextitem = Item.find_by(id: @item.id + 1)
  end
  
  def edit
    @image = ItemImage.where(item_id: @item.id)
    @count = @item.item_images.count
  end
  
  def update
    @parents = Category.where('ancestry is null')
    @categories = Category.all
    @children = @parents.map {|p| p.children.map {|c| Array.new << c.children}}
    gon.children = @parents.map {|p| Array.new << p.children}
    gon.grandchildren = @children
    if @item.update(item_update_params)
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

  def set_category
    @parents = Category.first(13)
    @categories = Category.all
    @children = @parents.map {|p| p.children.map {|c| Array.new << c.children}}
    gon.children = @parents.map {|p| Array.new << p.children}
    gon.grandchildren = @children
  end
  
  def buypage
  end
  
  def buy
    @item.update!(is_deleted: 1, buyer_id: current_user.id)
  end
  
  def top
  end


  private
  def item_params
    params.require(:item).permit(:name, :description, :brand, :category_id, :size_id, :condition_id, :delivery_fee_id, :delivery_from_id, :delivery_method_id, :delivery_day_id, :price, item_images_attributes: [:image]).merge(user_id: current_user.id)
  end

  def item_update_params
    params.require(:item).permit(:name, :description, :brand, :category_id, :size_id, :condition_id, :delivery_fee_id, :delivery_from_id, :delivery_method_id, :delivery_day_id, :price, item_images_attributes: [:image,:_destroy,:id]).merge(user_id: current_user.id)
  end

  def set_items
    @item = Item.find(params[:id])
  end
end

class ItemsController < ApplicationController
  def index
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

  def edit
  end

  def show
    @item = Item.find(params[:id])
  end


  private
  def item_params
    params.require(:item).permit(
      :name, 
      :description, 
      :brand, 
      :category_id, 
      :size_id, 
      :condition_id, 
      :delivery_fee_id, 
      :prefecture_id, 
      :delivery_method_id, 
      :delivery_day_id, 
      :price, 
      item_images_attributes: [:image]).merge(user_id: current_user.id)
  end
end

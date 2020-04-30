class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to :show, notice: 'メッセージの送信に成功しました'
    else
      flash.now[:error] = "メッセージの送信に失敗しました"
      render :new
    end

  end

  def edit
  end

  def show
    @item = Item.find(1)
  end


  def update
  end

  def destroy
  end

  private
  def item_params
    params.require(:item).permit(:name, :description, :brand, :size_id, :condition_id, :delivery_fee_id, :prefecture_id, :delivery_method_id, :delivery_day_id, :price).merge(user_id: 1)
  end
end

class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def cash
    card = Card.where(user_id: current_user.id)
    if card.present?
      redirect_to controller: 'cards', action: 'show', id: current_user.id
    end
  end
  def address
    @user = User.find(params[:user_id])
    @address = Address.find(params[:user_id])
  end

  # 販売中のitem
  def nowonsale
    @items = current_user.items.where('is_deleted is false')
  end

  # 売れたitem
  def soldout
    @items = current_user.items.where('is_deleted', 0)
  end

  # 取引中のitem
  def inprogress
  end

  # 購入履歴
  def purchasehistory
    @purchases = Item.where(buyer_id: current_user.id).order(id: :desc)
  end
end
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
end

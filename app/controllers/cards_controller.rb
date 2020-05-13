class CardsController < ApplicationController
  before_action :set_card
  require = "payjp"

  def show
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    customer = Payjp::Customer.retrieve(@card.customer_id)
    @cards = customer.cards.retrieve(@card.card_id)

    @brand = @cards.brand
    case @brand
    when "Visa"
      @card_brand = "credit-card_visa.png"
    when "MasterCard"
      @card_brand = "credit-card_master.png"
    when "JCB"
      @card_brand = "credit-card_jcb.png"
    when "American Express"
      @card_brand = "credit-card_american.png"
    when "Diners Club"
      @card_brand = "credit-card_diners.png"
    when "Discover"
      @card_brand = "credit-card_discover.png"
    end
    @month = @cards.exp_month.to_s
    @year = @cards.exp_year.to_s.slice(2,3)   
  end
  
  def new
    gon.payjp_key = ENV["PAYJP_KEY"]
    if @card
      redirect_to controller: 'cards', action: 'show', id: current_user.id
    end
  end

  def create
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    if params['payjpToken'].blank?
        redirect_to action: "new", alert: "クレジットカードを登録できませんでした。"
      else
        customer = Payjp::Customer.create(
        card: params['payjpToken'],
        metadata: {user_id: current_user.id}
        )
        @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
        if @card.save
          redirect_back(fallback_location: root_path)
          flash[:notice] = 'クレジットカードの登録が完了しました'
        else
          redirect_to controller: 'cards', action: 'new'
          flash[:alert] = 'クレジットカード登録に失敗しました'
        end
      end
  end

  def destroy
    Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
    customer = Payjp::Customer.retrieve(@card.customer_id)
    customer.delete
    @card.destroy

    if @card.destroy
      redirect_to cash_user_path(current_user.id)
      flash[:notice] = 'クレジットカードを削除しました'

      else
        redirect_to controller: 'cards', action: 'show', id: current_user.id, alert: "削除できませんでした。"
    end
  end

  def set_card
    @card = Card.find_by(user_id: current_user.id)
  end
end

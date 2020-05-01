class ItemsController < ApplicationController
  def index
  end

  def top
    @ladys = Item.where(category_id: 1)
    @mens = Item.where(category_id: 2)
    @electrical = Item.where(category_id: 8)
    @hobby = Item.where(category_id: 6)
  end

end

crumb :root do
  link "FURIMA", root_path
end

## カテゴリー関連
crumb :categories do
  link "カテゴリー一覧", categories_path
end

crumb :category do |category|
  link category[params[:id].to_i - 1].name, category_path(category)
  parent :categories
end

## アイテム関連
crumb :items do
  link "商品一覧", list_items_path
  parent :root
end

crumb :new_item do
  link "新規出品", new_item_path
  parent :root
end

crumb :item do |item|
  link item.name, item_path(item)
  parent :items
end

## マイページ関連
crumb :user do
  link "マイページ", user_path(current_user)
end

crumb :history do
  link "購入履歴", purchasehistory_user_path
  parent :user
end

crumb :soldout do
  link "完売した商品", soldout_user_path
  parent :user
end

crumb :nowonsale do
  link "販売中の商品", nowonsale_user_path
  parent :user
end

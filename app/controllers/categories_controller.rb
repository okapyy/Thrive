class CategoriesController < ApplicationController
  # アクションごとの処理をわかりやすくするため、before_actionでのレコードの取得は定義しない。

  def index
    @parents = Category.all.order("id ASC").limit(13)
  end

  def show
    params_id = params[:id].to_i - 1
    @parents = Category.all.order("id ASC").limit(13)
    @categories = Category.all
    len = @categories.length
    if params_id >= 0 && params_id <= 12
      @parent = @parents[params_id] 
    elsif params_id >= 13 && params_id < len
      @parent = @categories[params_id]
    else
      redirect_to categories_path
    end
  end
end
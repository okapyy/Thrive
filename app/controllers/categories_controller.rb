class CategoriesController < ApplicationController
  # アクションごとの処理をわかりやすくするため、before_actionでのレコードの全取得は定義しない。

  def index
    @parents = Category.all.order("id ASC").limit(13)
  end

  def show
    params_id = params[:id].to_i - 1
    @parents = Category.all.order("id ASC").limit(13)
    @categories = Category.all
    if params_id <= 12
      @parent = @parents[params_id]
    else
      @parent = @categories[params_id]
    end
  end
end
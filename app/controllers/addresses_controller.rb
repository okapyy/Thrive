class AddressesController < ApplicationController
  def update
    @address = Address.find(params[:id])
    if @address.update(address_params)
      redirect_back(fallback_location: root_path)
      flash[:notice] = "登録しました"
    else
      flash[:alert] = "登録に失敗しました。入力内容を確認してください。"
      redirect_back(fallback_location: root_path)
    end
  end

  private
  def address_params
    params.require(:address).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :prefecture_id, :city, :address, :building, :tel).merge(user_id: current_user.id)
  end
end

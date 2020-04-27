class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def create
    @user = User.new(user_params)
    if @user.save
      @user.update(birthday:birthday_join)
      # redirect_to root_path      //ユーザーを登録した後のページの遷移先の指定してください！
    else
      render 'new'
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:birthday)
  end

  def birthday_join
    date = params[:user][:birthday]
    if date["birthday(1i)"].empty? && date["birthday(2i)"].empty? && date["birthday(3i)"].empty?
      return
    end
    Date.new date["birthday(1i)"].to_i,date["birthday(2i)"].to_i,date["birthday(3i)"].to_i
  end
end

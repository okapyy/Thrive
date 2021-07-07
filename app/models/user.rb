class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2]
  
  has_many :cards
  has_many :items
  has_many :sns_credentials
  has_one :address
  has_many :purchases
  has_many :comments
  has_many :favorites, dependent: :destroy
  has_many :fav_items, through: :favorites, source: :item

  validates :nickname, presence: true, uniqueness: true
  validates :email,    presence: true, uniqueness: true, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, presence: true, length: { minimum: 7 }
  validates :birthday, presence: true

  def self.from_omniauth(auth)
    sns = SnsCredential.where(provider: auth.provider, uid: auth.uid).first_or_create
    user = sns.user || User.where(email: auth.info.email).first_or_initialize(
      nickname: auth.info.name,
      email: auth.info.email
    )
    if user.persisted?
      sns.user = user
      sns.save
    end
    { user: user, sns: sns }
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @user.update(birthday:birthday_join)
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

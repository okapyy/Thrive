class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  before_action :configre_permitted_parameters, if: :devise_controller?
  # before_action :set_category

  protected
  def configre_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :birthday])
  end

  private

  # def set_category
  #   @parents = Category.parent
  #   gon.categories = @category
  #   @lady = Category.find(1)
  #   @lady_children = @lady.children
  #   # @lady_child = @lady.children 
  #   gon.lady_children = @lady_children
  #   gon.indirects = @lady_children[0].children
  # end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == Rails.application.credentials[:basic_auth][:user] &&
      password == Rails.application.credentials[:basic_auth][:pass]
    end
  end

  def production?
    Rails.env.production?
  end
end

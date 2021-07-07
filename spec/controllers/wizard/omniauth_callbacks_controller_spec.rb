require 'rails_helper'

describe Wizard::OmniauthCallbacksController, type: :controller do

  describe "#facebook,#authorization" do
    before { request.env["omniauth.auth"] = facebook_mock }
    subject { post :facebook, params: { provider: "facebook"}}
    it "emailがすでにDBにある場合ログインする" do
      expect(subject).to sign_in_and_redirect
    end
  end
end
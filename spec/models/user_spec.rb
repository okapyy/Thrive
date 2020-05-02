require 'rails_helper'
describe User do
  describe '#create' do
    it "nickname,email,password,password_confirmation,birthdayがあれば登録できる" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "nicknameがないと登録できない" do
      user = build(:user, nickname: nil)
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end

    it "emailがないと登録できない" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it "passwordがないと登録できない" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end

    it "birthdayがないと登録できない" do
      user = build(:user, birthday: nil)
      user.valid?
      expect(user.errors[:birthday]).to include("can't be blank")
    end

    it "emailにドメインがあると登録できる" do
      user = build(:user, email: "test@test.jp")
      user.valid?
      expect(user).to be_valid
    end

    it "emailにドメインがないと登録できない" do
      user = build(:user, email: "test@test")
      user.valid?
      expect(user.errors[:email]).to include("is invalid")
    end

    it "passwordはあるけどpassword_contirmationがないと登録できない" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end

    it "nicknameが重複していたら登録できない" do
      user = create(:user)
      another_user = build(:user, nickname: user.nickname)
      another_user.valid?
      expect(another_user.errors[:nickname]).to include("has already been taken")
    end

    it "emailが重複していたら登録できない" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end

    it "passwordが7文字以上で登録ができる" do
      user = build(:user, password: "1111111", password_confirmation: "1111111")
      user.valid?
      expect(user).to be_valid
    end

    it "passwordが6文字以下だと登録できない" do
      user = build(:user, password: "000000", password_confirmation: "000000")
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 7 characters)")
    end
  end
end
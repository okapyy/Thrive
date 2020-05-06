require 'rails_helper'
describe Item do
  describe '#create' do
    it "商品名がない場合は登録できないこと" do
      item = build(:item, name: " ")
      item.valid?
      expect(item.errors[:name]).to include("can't be blank")
    end

    it "商品説明がない場合は登録できないこと" do
      item = build(:item, description: " ")
      item.valid?
      expect(item.errors[:description]).to include("can't be blank")
    end

    it "カテゴリ情報がない場合は登録できないこと" do
      item = build(:item, category_id: " ")
      item.valid?
      expect(item.errors[:category_id]).to include("can't be blank")
    end

    it "商品状態の情報がない場合は登録できないこと" do
      item = build(:item, condition_id: " ")
      item.valid?
      expect(item.errors[:condition_id]).to include("can't be blank")
    end

    it "配送料の情報がない場合は登録できないこと" do
      item = build(:item, delivery_fee_id: " ")
      item.valid?
      expect(item.errors[:delivery_fee_id]).to include("can't be blank")
    end

    it "発送元の地域情報ない場合は登録できないこと" do
      item = build(:item, prefecture_id: " ")
      item.valid?
      expect(item.errors[:prefecture_id]).to include("can't be blank")
    end

    it "発送日の情報がない場合は登録できないこと" do
      item = build(:item, delivery_day_id: " ")
      item.valid?
      expect(item.errors[:delivery_day_id]).to include("can't be blank")
    end

    it "金額入力がない場合は登録できないこと" do
      item = build(:item, price: " ")
      item.valid?
      expect(item.errors[:price]).to include("can't be blank")
    end

    it "値段が299以下の場合は登録できない" do
      item = build(:item, price: "2")
      item.valid?
      expect(item.errors[:price]).to include("must be greater than 300")
    end

    it "値段が9999999以上の場合は登録できない" do
      item = build(:item, price: "9999999999")
      item.valid?
      expect(item.errors[:price]).to include("must be less than 9999999")
    end

    it "user_idがない場合は登録できないこと" do
      item = build(:item, user_id: " ")
      item.valid?
      expect(item.errors[:user_id]).to include("can't be blank")
    end

  end
end


require 'rails_helper'
describe Item do
  describe '#create' do
    it "名前がない場合は登録できないこと" do
      item = build(:item, name: " ")
      item.valid?
      expect(item.errors[:name]).to include("can't be blank")
    end

    it "カテゴリ選択がない場合は登録できないこと" do
      item = build(:item, category_id: " ")
      item.valid?
      expect(item.errors[:category_id]).to include("can't be blank")
    end

    it "状態選択がない場合は登録できないこと" do
      item = build(:item, condition_id: " ")
      item.valid?
      expect(item.errors[:condition_id]).to include("can't be blank")
    end

    it "user_idがない場合は登録できないこと" do
      item = build(:item, user_id: " ")
      item.valid?
      expect(item.errors[:user_id]).to include("can't be blank")
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

  end
end


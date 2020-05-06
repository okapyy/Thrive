require 'rails_helper'
describe Address do
  describe '#create' do
    it "last_name,first_name,last_name_kana,first_name_kana,postal_code,prefecture_id,city,addressがあれば登録できる"do
      address = build(:address)
      address.valid?
      expect(address).to be_valid
    end

    it "last_nameがないと登録できない" do
      address = build(:address, last_name: "")
      address.valid?
      expect(address.errors[:last_name]).to include("can't be blank")
    end

    it "first_nameがないと登録できない" do
      address = build(:address, first_name: "")
      address.valid?
      expect(address.errors[:first_name]).to include("can't be blank")
    end

    it "last_name_kanaがないと登録できない" do
      address = build(:address, last_name_kana: "")
      address.valid?
      expect(address.errors[:last_name_kana]).to include("can't be blank")
    end

    it "first_name_kanaがないと登録できない" do
      address = build(:address, first_name_kana: "")
      address.valid?
      expect(address.errors[:first_name_kana]).to include("can't be blank")
    end

    it "postal_codeがないと登録できない" do
      address = build(:address, postal_code: "")
      address.valid?
      expect(address.errors[:postal_code]).to include("can't be blank")
    end

    it "prefecture_idがないと登録できない" do
      address = build(:address, prefecture_id: nil)
      address.valid?
      expect(address.errors[:prefecture_id]).to include("can't be blank")
    end

    it "cityがないと登録できない" do
      address = build(:address, city: "")
      address.valid?
      expect(address.errors[:city]).to include("can't be blank")
    end

    it "addressがないと登録できない" do
      address = build(:address, address: "")
      address.valid?
      expect(address.errors[:address]).to include("can't be blank")
    end

    it "last_name,first_name,last_name_kana,first_name_kanaが全角だと登録できる" do
      address = build(:address, last_name: "岡田", first_name: "明日香", last_name_kana: "おかだ", first_name_kana: "あすか")
      address.valid?
      expect(address).to be_valid
    end

    it "last_name,first_name,last_name_kana,first_name_kanaが半角だと登録できない" do
      address = build(:address, last_name: "okada", first_name: "asuka", last_name_kana: "okada", first_name_kana: "asuka")
      address.valid?
      expect(address.errors[:address]).to include()
    end

  end
end
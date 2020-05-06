require 'rails_helper'
describe ItemImage do
  describe '#create' do
    it "画像がない場合は出品できないこと" do
      item_image = ItemImage.new(image: " ")
      item_image.valid?
      expect(item_image.errors[:image]).to include("can't be blank")
    end
  end
end
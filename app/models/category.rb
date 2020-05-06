
class Category < ActiveHash::Base
  include ActiveHash::Associations
  has_many :items
  has_ancestry
  
  self.data = [
    {:id => 1, :name => "レディース"},
    {:id => 2, :name => "メンズ"},
    {:id => 3, :name => "ベビーキッズ"},
    {:id => 4, :name => "インテリア・住まい・小物"},
    {:id => 5, :name => "本・音楽・ゲーム"},
    {:id => 6, :name => "おもちゃ・ホビー"},
  ]
end


class Category < ActiveHash::Base
  self.data = [
    { id: 0, name: "---"},
    { id: 1, name: "弾き語り"},
    { id: 2, name: "オリジナル"},
    { id: 3, name: "歌ってみた"},
    { id: 4, name: "演奏してみた"},
    { id: 5, name: "その他"}
  ]

  include ActiveHash::Associations
  has_many :posts
end
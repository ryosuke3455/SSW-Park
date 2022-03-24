class Genre < ActiveHash::Base
  self.data = [
    { id: 0, name: "---"},
    { id: 1, name: "オリジナル"},
    { id: 2, name: "邦楽"},
    { id: 3, name: "洋楽"},
    { id: 4, name: "ロック・メタル"},
    { id: 5, name: "その他"}
  ]

  include ActiveHash::Associations
  has_many :posts
end
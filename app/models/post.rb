class Post < ApplicationRecord
  validates :image, presence: true
  validates :title, presence: true
  validates :explanation, presence: true
  validates :category_id, numericality: { other_than: 0}
  validates :junre_id, numericality: { other_than: 0}
  
  belongs_to :user
  has_one_attached :image
end

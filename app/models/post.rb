class Post < ApplicationRecord
  validates :image, presence: true
  validates :title, presence: true
  validates :explanation, presence: true
  validates :category_id, numericality: { other_than: 0, message: 'を選択してください'}
  validates :junre_id, numericality: { other_than: 0, message: 'を選択してください'}
  
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :category

end

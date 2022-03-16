class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :name, presence: true

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, allow_blank: true, message: 'には6文字以上で、英字と数字の両方を含めて設定してください'
  validates_format_of :password_confirmation, with: PASSWORD_REGEX, allow_blank: true, message: 'には6文字以上で、英字と数字の両方を含めて設定してください'
end
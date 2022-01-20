class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true,  length: {in: 2..20}
  validates :introduction, length: { maximum: 50}

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  attachment :profile_image
  has_many :books, dependent: :destroy
end
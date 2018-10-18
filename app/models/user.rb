class User < ApplicationRecord
  has_many :sales
  has_many :purchased_books, through: :sales, source: :book

  has_many :book_authors, foreign_key: :author_id
  has_many :books, through: :book_authors
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :email, presence: true

  has_one_attached :avatar
end

class Book < ApplicationRecord
  has_many :sales
  has_many :users, through: :sales

  has_many :book_authors
  has_many :authors, through: :book_authors

  def stripe_amount
    (price * 100).to_i
  end
end

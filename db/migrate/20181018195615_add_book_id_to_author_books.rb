class AddBookIdToAuthorBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :book_authors, :book_id, :integer
  end
end

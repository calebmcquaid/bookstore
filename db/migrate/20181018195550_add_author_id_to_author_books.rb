class AddAuthorIdToAuthorBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :book_authors, :author_id, :integer
  end
end

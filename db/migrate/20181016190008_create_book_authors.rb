class CreateBookAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :book_authors do |t|
      t.integer :book_id, null: false, index: true
      t.integer :author_id, null: false, index: true
      t.timestamps
    end
  end
end

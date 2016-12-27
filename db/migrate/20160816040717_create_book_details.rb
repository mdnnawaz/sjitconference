class CreateBookDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :book_details do |t|
      t.string :book_title
      t.string :one_author_name
      t.string :one_designation
      t.string :one_organization
      t.string :two_author_name
      t.string :two_designation
      t.string :two_organization
      t.string :three_author_name
      t.string :three_designation
      t.string :three_organization
      t.string :publisher_name
      t.text :publisher_address
      t.string :isbn
      t.string :one_publication
      t.string :edition_number
      t.string :reprint_year

      t.timestamps
    end
  end
end

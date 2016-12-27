class AddUsersToBooksDetails < ActiveRecord::Migration[5.0]
  def change
    add_reference :book_details, :user, foreign_key: true
  end
end

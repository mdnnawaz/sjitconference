class AddPaperToBookDetails < ActiveRecord::Migration[5.0]
  def change
    # add_column :book_details, :paper, :attachment
    add_attachment :book_details,:paper, :file 
  end
end

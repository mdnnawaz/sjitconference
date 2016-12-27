class RemovePaperFromBookDetail < ActiveRecord::Migration[5.0]
  def change
  	remove_attachment :book_details, :paper
  end
end

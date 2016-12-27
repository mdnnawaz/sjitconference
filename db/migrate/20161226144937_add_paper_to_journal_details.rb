class AddPaperToJournalDetails < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :journal_details, :paper, :file
  end
end

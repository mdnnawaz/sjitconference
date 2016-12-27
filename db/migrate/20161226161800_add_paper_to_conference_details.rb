class AddPaperToConferenceDetails < ActiveRecord::Migration[5.0]
  def change
  	add_attachment :conference_details, :paper, :file
  end
end

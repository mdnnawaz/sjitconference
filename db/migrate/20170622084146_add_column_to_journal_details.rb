class AddColumnToJournalDetails < ActiveRecord::Migration[5.0]
  def change
    add_column :journal_details, :page_end, :string
    add_column :journal_details, :impact_factor_scopus, :float
  end
end

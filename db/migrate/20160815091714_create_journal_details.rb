class CreateJournalDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :journal_details do |t|
      t.string :academic_year
      t.string :sem
      t.string :journal_name
      t.string :issn_no
      t.float :impact_factor
      t.string :journal_type
      t.string :paper_title
      t.string :one_author_name
      t.string :one_dept
      t.string :one_organization
      t.string :one_others
      t.string :two_author_name
      t.string :two_dept
      t.string :two_organization
      t.string :two_others
      t.string :three_author_name
      t.string :three_dept
      t.string :three_organization
      t.string :three_others
      t.string :vol_no
      t.string :issue_no
      t.string :page_no
      t.string :date_submitted
      t.string :date_acceptance
      t.string :date_publish
      t.text :paper_abstract
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end

class CreateConferenceDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :conference_details do |t|
      t.string :academic_year
      t.string :sem
      t.string :conference_name
      t.string :conference_organizer
      t.text :address
      t.string :city
      t.string :conference_type
      t.string :isbn
      t.string :paper_title
      t.string :one_author_name
      t.string :one_department
      t.string :one_organization
      t.string :one_others
      t.string :two_author_name
      t.string :two_department
      t.string :two_organization
      t.string :two_others
      t.string :three_author_name
      t.string :three_department
      t.string :three_organization
      t.string :three_others
      t.string :volume_number
      t.string :issue_number
      t.string :page_start
      t.string :page_end
      t.string :date_submission
      t.string :date_acceptance
      t.string :date_published
      t.text :paper_abstract
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end

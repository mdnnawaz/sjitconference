class CreateConsultingProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :consulting_projects do |t|
      t.string :project_title
      t.string :consulting_name
      t.text :address
      t.string :contact_person
      t.string :mobile
      t.string :principle_name
      t.string :principle_designation
      t.string :principle_company
      t.text :principle_address
      t.string :principle_mobile
      t.string :principle_mail_id
      t.string :co_investigator_name
      t.string :co_investigator_designation
      t.string :co_investigator_company
      t.text :co_investigator_address
      t.string :co_investigator_mobile
      t.string :co_investigator_mail_id
      t.string :jrf1_name
      t.string :jrf1_designation
      t.string :jrf1_organizer
      t.text :jrf1_address
      t.string :jrf1_mobile
      t.string :jrf1_mail_id
      t.string :jrf2_name
      t.string :jrf2_designation
      t.string :jrf2_organizer
      t.text :jrf2_address
      t.string :jrf2_mobile
      t.string :jrf2_mail_id
      t.string :jrf3_name
      t.string :jrf3_designation
      t.string :jrf3_organizer
      t.text :jrf3_address
      t.string :jrf3_mobile
      t.string :jrf3_mail_id
      t.string :jrf4_name
      t.string :jrf4_designation
      t.string :jrf4_organizer
      t.text :jrf4_address
      t.string :jrf4_mobile
      t.string :jrf4_mail_id
      t.string :jrf5_name
      t.string :jrf5_designation
      t.string :jrf5_organizer
      t.text :jrf5_address
      t.string :jrf5_mobile
      t.string :jrf5_mail_id
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end

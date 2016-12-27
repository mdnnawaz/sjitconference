class CreateFundedProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :funded_projects do |t|
      t.string :project_title
      t.text :about_project
      t.string :funding_agency
      t.string :sub_agency
      t.text :address
      t.string :project_value
      t.string :project_submitted_date
      t.string :sanctioned_amount
      t.string :total_amount_recieved
      t.string :date_of_completion
      t.text :remarks

      t.timestamps
    end
  end
end

class AddUsersToFundedProject < ActiveRecord::Migration[5.0]
  def change
    add_reference :funded_projects, :user, foreign_key: true
  end
end

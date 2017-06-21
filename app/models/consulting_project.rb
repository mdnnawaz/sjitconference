class ConsultingProject < ApplicationRecord
  belongs_to :user

  validates_presence_of :project_title,:consulting_name,:address,:contact_person,:mobile,:principle_name,
  :principle_designation,:principle_company,:principle_address,:principle_mobile,:principle_mail_id,
  :co_investigator_name,:co_investigator_designation,:co_investigator_company,:co_investigator_address,
  :co_investigator_mobile,:co_investigator_mail_id,:jrf1_name,:jrf1_designation,:jrf1_organizer,:jrf1_address,
  :jrf1_mobile,:jrf1_mail_id
  
end

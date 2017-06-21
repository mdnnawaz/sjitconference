class FundedProject < ApplicationRecord

	validates_presence_of :project_title,:about_project,:funding_agency,:sub_agency,:address,:project_value,
	:project_submitted_date,:sanctioned_amount,:total_amount_received,:date_of_completion,:remarks
end

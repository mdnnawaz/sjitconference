class ConferenceDetail < ApplicationRecord
	belongs_to :user
	has_attached_file :paper
	do_not_validate_attachment_file_type :paper

	validates_presence_of :academic_year,
	:sem,
	:conference_name,
	:conference_organizer,
	:address,
	:city,
	:conference_type,
	:isbn,
	:paper_title,
	:one_author_name,
	:one_department,
	:one_organization,
	:one_others,
	:volume_number,
	:issue_number,
	:page_start,
	:page_end,
	:date_submission,
	:date_acceptance,
	:date_published,
	:paper_abstract
end

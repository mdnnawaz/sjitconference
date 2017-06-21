class JournalDetail < ApplicationRecord
  belongs_to :user
  has_attached_file :paper
  do_not_validate_attachment_file_type :paper


  validates_presence_of :academic_year, :sem,:journal_name,:issn_no,:journal_type,:paper_title,:one_author_name,:one_dept,:one_organization,:vol_no,:issue_no,:page_no,:date_submitted,:date_acceptance,
  						:date_publish,:paper_abstract

end

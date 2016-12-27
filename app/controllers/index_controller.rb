class IndexController < ApplicationController
  before_action :authenticate_user!

  def index
  	@journal_details = JournalDetail.where(user_id: current_user.id)
  	@consulting_projects = ConsultingProject.where(user_id: current_user.id)
  	@book_details = BookDetail.where(user_id: current_user.id)
  	@funded_projects = FundedProject.where(user_id: current_user.id)
  	@conference_details = ConferenceDetail.where(user_id: current_user.id)
  end

end

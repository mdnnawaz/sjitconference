require 'test_helper'

class ConsultingProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consulting_project = consulting_projects(:one)
  end

  test "should get index" do
    get consulting_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_consulting_project_url
    assert_response :success
  end

  test "should create consulting_project" do
    assert_difference('ConsultingProject.count') do
      post consulting_projects_url, params: { consulting_project: { address: @consulting_project.address, co_investigator_address: @consulting_project.co_investigator_address, co_investigator_company: @consulting_project.co_investigator_company, co_investigator_designation: @consulting_project.co_investigator_designation, co_investigator_mail_id: @consulting_project.co_investigator_mail_id, co_investigator_mobile: @consulting_project.co_investigator_mobile, co_investigator_name: @consulting_project.co_investigator_name, consulting_name: @consulting_project.consulting_name, contact_person: @consulting_project.contact_person, jrf1_address: @consulting_project.jrf1_address, jrf1_designation: @consulting_project.jrf1_designation, jrf1_mail_id: @consulting_project.jrf1_mail_id, jrf1_mobile: @consulting_project.jrf1_mobile, jrf1_name: @consulting_project.jrf1_name, jrf1_organizer: @consulting_project.jrf1_organizer, mobile: @consulting_project.mobile, principle_address: @consulting_project.principle_address, principle_company: @consulting_project.principle_company, principle_designation: @consulting_project.principle_designation, principle_mail_id: @consulting_project.principle_mail_id, principle_mobile: @consulting_project.principle_mobile, principle_name: @consulting_project.principle_name, project_title: @consulting_project.project_title, user_id: @consulting_project.user_id } }
    end

    assert_redirected_to consulting_project_url(ConsultingProject.last)
  end

  test "should show consulting_project" do
    get consulting_project_url(@consulting_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_consulting_project_url(@consulting_project)
    assert_response :success
  end

  test "should update consulting_project" do
    patch consulting_project_url(@consulting_project), params: { consulting_project: { address: @consulting_project.address, co_investigator_address: @consulting_project.co_investigator_address, co_investigator_company: @consulting_project.co_investigator_company, co_investigator_designation: @consulting_project.co_investigator_designation, co_investigator_mail_id: @consulting_project.co_investigator_mail_id, co_investigator_mobile: @consulting_project.co_investigator_mobile, co_investigator_name: @consulting_project.co_investigator_name, consulting_name: @consulting_project.consulting_name, contact_person: @consulting_project.contact_person, jrf1_address: @consulting_project.jrf1_address, jrf1_designation: @consulting_project.jrf1_designation, jrf1_mail_id: @consulting_project.jrf1_mail_id, jrf1_mobile: @consulting_project.jrf1_mobile, jrf1_name: @consulting_project.jrf1_name, jrf1_organizer: @consulting_project.jrf1_organizer, mobile: @consulting_project.mobile, principle_address: @consulting_project.principle_address, principle_company: @consulting_project.principle_company, principle_designation: @consulting_project.principle_designation, principle_mail_id: @consulting_project.principle_mail_id, principle_mobile: @consulting_project.principle_mobile, principle_name: @consulting_project.principle_name, project_title: @consulting_project.project_title, user_id: @consulting_project.user_id } }
    assert_redirected_to consulting_project_url(@consulting_project)
  end

  test "should destroy consulting_project" do
    assert_difference('ConsultingProject.count', -1) do
      delete consulting_project_url(@consulting_project)
    end

    assert_redirected_to consulting_projects_url
  end
end

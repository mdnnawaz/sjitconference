require 'test_helper'

class FundedProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @funded_project = funded_projects(:one)
  end

  test "should get index" do
    get funded_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_funded_project_url
    assert_response :success
  end

  test "should create funded_project" do
    assert_difference('FundedProject.count') do
      post funded_projects_url, params: { funded_project: { about_project: @funded_project.about_project, address: @funded_project.address, date_of_completion: @funded_project.date_of_completion, funding_agency: @funded_project.funding_agency, project_submitted_date: @funded_project.project_submitted_date, project_title: @funded_project.project_title, project_value: @funded_project.project_value, remarks: @funded_project.remarks, sanctioned_amount: @funded_project.sanctioned_amount, sub_agency: @funded_project.sub_agency, total_amount_recieved: @funded_project.total_amount_recieved } }
    end

    assert_redirected_to funded_project_url(FundedProject.last)
  end

  test "should show funded_project" do
    get funded_project_url(@funded_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_funded_project_url(@funded_project)
    assert_response :success
  end

  test "should update funded_project" do
    patch funded_project_url(@funded_project), params: { funded_project: { about_project: @funded_project.about_project, address: @funded_project.address, date_of_completion: @funded_project.date_of_completion, funding_agency: @funded_project.funding_agency, project_submitted_date: @funded_project.project_submitted_date, project_title: @funded_project.project_title, project_value: @funded_project.project_value, remarks: @funded_project.remarks, sanctioned_amount: @funded_project.sanctioned_amount, sub_agency: @funded_project.sub_agency, total_amount_recieved: @funded_project.total_amount_recieved } }
    assert_redirected_to funded_project_url(@funded_project)
  end

  test "should destroy funded_project" do
    assert_difference('FundedProject.count', -1) do
      delete funded_project_url(@funded_project)
    end

    assert_redirected_to funded_projects_url
  end
end

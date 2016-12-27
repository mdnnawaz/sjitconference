require 'test_helper'

class JournalDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @journal_detail = journal_details(:one)
  end

  test "should get index" do
    get journal_details_url
    assert_response :success
  end

  test "should get new" do
    get new_journal_detail_url
    assert_response :success
  end

  test "should create journal_detail" do
    assert_difference('JournalDetail.count') do
      post journal_details_url, params: { journal_detail: { 1_author_name: @journal_detail.1_author_name, 1_dept: @journal_detail.1_dept, 1_organization: @journal_detail.1_organization, 1_others: @journal_detail.1_others, 2_author_name: @journal_detail.2_author_name, 2_dept: @journal_detail.2_dept, 2_organization: @journal_detail.2_organization, 2_others: @journal_detail.2_others, academic_year: @journal_detail.academic_year, date_acceptance: @journal_detail.date_acceptance, date_publish: @journal_detail.date_publish, date_submitted: @journal_detail.date_submitted, impact_factor: @journal_detail.impact_factor, issn_no: @journal_detail.issn_no, issue_no: @journal_detail.issue_no, journal_name: @journal_detail.journal_name, journal_type: @journal_detail.journal_type, page_no: @journal_detail.page_no, paper_abstract: @journal_detail.paper_abstract, paper_title: @journal_detail.paper_title, sem: @journal_detail.sem, user_id: @journal_detail.user_id, vol_no: @journal_detail.vol_no } }
    end

    assert_redirected_to journal_detail_url(JournalDetail.last)
  end

  test "should show journal_detail" do
    get journal_detail_url(@journal_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_journal_detail_url(@journal_detail)
    assert_response :success
  end

  test "should update journal_detail" do
    patch journal_detail_url(@journal_detail), params: { journal_detail: { 1_author_name: @journal_detail.1_author_name, 1_dept: @journal_detail.1_dept, 1_organization: @journal_detail.1_organization, 1_others: @journal_detail.1_others, 2_author_name: @journal_detail.2_author_name, 2_dept: @journal_detail.2_dept, 2_organization: @journal_detail.2_organization, 2_others: @journal_detail.2_others, academic_year: @journal_detail.academic_year, date_acceptance: @journal_detail.date_acceptance, date_publish: @journal_detail.date_publish, date_submitted: @journal_detail.date_submitted, impact_factor: @journal_detail.impact_factor, issn_no: @journal_detail.issn_no, issue_no: @journal_detail.issue_no, journal_name: @journal_detail.journal_name, journal_type: @journal_detail.journal_type, page_no: @journal_detail.page_no, paper_abstract: @journal_detail.paper_abstract, paper_title: @journal_detail.paper_title, sem: @journal_detail.sem, user_id: @journal_detail.user_id, vol_no: @journal_detail.vol_no } }
    assert_redirected_to journal_detail_url(@journal_detail)
  end

  test "should destroy journal_detail" do
    assert_difference('JournalDetail.count', -1) do
      delete journal_detail_url(@journal_detail)
    end

    assert_redirected_to journal_details_url
  end
end

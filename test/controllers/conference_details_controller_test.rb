require 'test_helper'

class ConferenceDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conference_detail = conference_details(:one)
  end

  test "should get index" do
    get conference_details_url
    assert_response :success
  end

  test "should get new" do
    get new_conference_detail_url
    assert_response :success
  end

  test "should create conference_detail" do
    assert_difference('ConferenceDetail.count') do
      post conference_details_url, params: { conference_detail: { academic_year: @conference_detail.academic_year, address: @conference_detail.address, city: @conference_detail.city, conference_name: @conference_detail.conference_name, conference_organizer: @conference_detail.conference_organizer, conference_type: @conference_detail.conference_type, date_acceptance: @conference_detail.date_acceptance, date_published: @conference_detail.date_published, date_submission: @conference_detail.date_submission, isbn: @conference_detail.isbn, issue_number: @conference_detail.issue_number, one_author_name: @conference_detail.one_author_name, one_department: @conference_detail.one_department, one_organization: @conference_detail.one_organization, one_others: @conference_detail.one_others, page_end: @conference_detail.page_end, page_start: @conference_detail.page_start, paper_abstract: @conference_detail.paper_abstract, paper_title: @conference_detail.paper_title, sem: @conference_detail.sem, user_id: @conference_detail.user_id, volume_number: @conference_detail.volume_number } }
    end

    assert_redirected_to conference_detail_url(ConferenceDetail.last)
  end

  test "should show conference_detail" do
    get conference_detail_url(@conference_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_conference_detail_url(@conference_detail)
    assert_response :success
  end

  test "should update conference_detail" do
    patch conference_detail_url(@conference_detail), params: { conference_detail: { academic_year: @conference_detail.academic_year, address: @conference_detail.address, city: @conference_detail.city, conference_name: @conference_detail.conference_name, conference_organizer: @conference_detail.conference_organizer, conference_type: @conference_detail.conference_type, date_acceptance: @conference_detail.date_acceptance, date_published: @conference_detail.date_published, date_submission: @conference_detail.date_submission, isbn: @conference_detail.isbn, issue_number: @conference_detail.issue_number, one_author_name: @conference_detail.one_author_name, one_department: @conference_detail.one_department, one_organization: @conference_detail.one_organization, one_others: @conference_detail.one_others, page_end: @conference_detail.page_end, page_start: @conference_detail.page_start, paper_abstract: @conference_detail.paper_abstract, paper_title: @conference_detail.paper_title, sem: @conference_detail.sem, user_id: @conference_detail.user_id, volume_number: @conference_detail.volume_number } }
    assert_redirected_to conference_detail_url(@conference_detail)
  end

  test "should destroy conference_detail" do
    assert_difference('ConferenceDetail.count', -1) do
      delete conference_detail_url(@conference_detail)
    end

    assert_redirected_to conference_details_url
  end
end

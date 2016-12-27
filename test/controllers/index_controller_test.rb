require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get journals" do
    get index_journals_url
    assert_response :success
  end

  test "should get funded_projects" do
    get index_funded_projects_url
    assert_response :success
  end

  test "should get conference" do
    get index_conference_url
    assert_response :success
  end

  test "should get consulting_projects" do
    get index_consulting_projects_url
    assert_response :success
  end

  test "should get books" do
    get index_books_url
    assert_response :success
  end

end

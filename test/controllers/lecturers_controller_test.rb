require 'test_helper'

class LecturersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lecturer = lecturers(:one)
  end

  test "should get index" do
    get lecturers_url
    assert_response :success
  end

  test "should get new" do
    get new_lecturer_url
    assert_response :success
  end

  test "should show lecturer" do
    get lecturer_url(@lecturer)
    assert_response :success
  end

  test "should get edit" do
    get edit_lecturer_url(@lecturer)
    assert_response :success
  end
end

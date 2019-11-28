require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "Should save course" do
    professor = Lecturer.new(name: "Rodrigo", email: "rcaa@ufrpe.com", id: "1")
    professor.save
    @course = Course.new(title: "Engenharia de Software", codigo: "ES2019.2B", lecturer_id: "1")
    assert @course.save
  end

  test "Should not save course without title" do
    @course = Course.new(title: "", codigo: "ES2019.2B", lecturer_id: "6")
    assert_not @course.save
  end

  test "Should not save course without code" do
    @course = Course.new(title: "Engenharia de Software", codigo: "", lecturer_id: "6")
    assert_not @course.save
  end

  test "Should not save course with code thats already taken" do
    @course = Course.new(title: "Engenharia de Software", codigo: "ES2019.2B", lecturer_id: "6")
    @course.save
    curso = Course.new(title: "Engenharia de Software", codigo: "ES2019.2B", lecturer_id: "6")
    assert_not curso.save
  end

end

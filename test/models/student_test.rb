require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  test "Should save student" do
    @student = Student.new(name: "Pirangaba", email: "pirangabaneto@gmail.com")
    assert @student.save
  end

  test "Should not save student without name" do
    @student = Student.new(name: "", email: "pirangabaneto@gmail.com")
    assert_not @student.save
  end

  test "Should not save student with a short name" do
    @student = Student.new(name: "Pi", email: "pirangabaneto@gmail.com")
    assert_not @student.save
  end

  test "Should not save student without email" do
    @student = Student.new(name: "Pirangaba", email: "")
    assert_not @student.save
  end

  test "Should not save student with wrong format email" do
    @student = Student.new(name: "Pirangaba", email: "pirangabaneto")
    assert_not @student.save
  end

  test "Should not save student with email thats already taken" do
    @student = Student.new(name: "Pirangaba", email: "pirangabaneto@gmail.com")
    @student.save
    estudante = Student.new(name: "Gabriel", email: "pirangabaneto@gmail.com")
    assert_not estudante.save
  end
end

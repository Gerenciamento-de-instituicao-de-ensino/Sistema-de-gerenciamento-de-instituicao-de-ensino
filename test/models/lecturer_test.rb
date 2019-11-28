require 'test_helper'

class LecturerTest < ActiveSupport::TestCase
   test "Should save lecturer" do
     @lecturer = Lecturer.new(name: "Rodrigo", email: "rcaa@ufrpe.com")
     assert @lecturer.save
   end

   test "Should not save lecturer without name" do
     @lecturer = Lecturer.new(name: "", email: "rcaa@ufrpe.com")
     assert_not @lecturer.save
   end

   test "Should not save lecturer with a short name" do
     @lecturer = Lecturer.new(name: "Ro", email: "rcaa@ufrpe.com")
     assert_not @lecturer.save
   end

   test "Should not save lecturer without email" do
     @lecturer = Lecturer.new(name: "Rodrigo", email: "")
     assert_not @lecturer.save
   end

   test "Should not save lecturer with wrong format email" do
     @lecturer = Lecturer.new(name: "Rodrigo", email: "rcaa")
     assert_not @lecturer.save
   end

   test "Should not save lecturer with email thats already taken" do
     @lecturer = Lecturer.new(name: "Rodrigo", email: "rcaa@ufrpe.com")
     @lecturer.save
     professor = Lecturer.new(name: "Dimas", email: "rcaa@ufrpe.com")
     assert_not professor.save
   end

end

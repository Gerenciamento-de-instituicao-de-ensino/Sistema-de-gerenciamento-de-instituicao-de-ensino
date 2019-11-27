require 'test_helper'

class AdministradorTest < ActiveSupport::TestCase
   test "should save administrador" do
     @administrador = Administrador.new(login: 'Pirangaba', senha: 'admin')
     assert @administrador.save
   end

   test "shouldn't save administrador without login" do
     @administrador = Administrador.new(login: '', senha: 'admin')
     assert_not @administrador.save
   end

   test "shouldn't save administrador without senha" do
     @administrador = Administrador.new(login: 'Pirangaba', senha: '')
     assert_not @administrador.save
   end
end

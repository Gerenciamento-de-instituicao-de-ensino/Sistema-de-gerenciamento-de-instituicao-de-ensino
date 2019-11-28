require 'test_helper'

class AdministradorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @administrador = administradors(:one)
  end

  test "should show administrador" do
    get administrador_url(@administrador)
    assert_response :success
  end

  test "should get edit" do
    get edit_administrador_url(@administrador)
    assert_response :success
  end

end

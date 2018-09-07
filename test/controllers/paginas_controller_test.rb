require 'test_helper'

class PaginasControllerTest < ActionDispatch::IntegrationTest
  test "should get contacto" do
    get paginas_contacto_url
    assert_response :success
  end

  test "should get acerca" do
    get paginas_acerca_url
    assert_response :success
  end

end

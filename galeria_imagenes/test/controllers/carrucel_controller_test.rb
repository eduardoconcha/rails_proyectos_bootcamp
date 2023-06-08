require "test_helper"

class CarrucelControllerTest < ActionDispatch::IntegrationTest
  test "should get fotos" do
    get carrucel_fotos_url
    assert_response :success
  end
end

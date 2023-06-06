require "test_helper"

class ReptilesControllerTest < ActionDispatch::IntegrationTest
  test "should get iguana" do
    get reptiles_iguana_url
    assert_response :success
  end
end

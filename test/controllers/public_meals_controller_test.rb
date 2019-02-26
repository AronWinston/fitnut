require 'test_helper'

class PublicMealsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_meals_index_url
    assert_response :success
  end

end

require 'test_helper'

class PublicWorkoutsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_workouts_index_url
    assert_response :success
  end

end

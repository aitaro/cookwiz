require 'test_helper'

class CookRecipesControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get cook_recipes_search_url
    assert_response :success
  end

end

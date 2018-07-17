require 'test_helper'

class ResterauntsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resteraunt = resteraunts(:one)
  end

  test "should get index" do
    get resteraunts_url, as: :json
    assert_response :success
  end

  test "should create resteraunt" do
    assert_difference('Resteraunt.count') do
      post resteraunts_url, params: { resteraunt: { location: @resteraunt.location, name: @resteraunt.name, user_id: @resteraunt.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show resteraunt" do
    get resteraunt_url(@resteraunt), as: :json
    assert_response :success
  end

  test "should update resteraunt" do
    patch resteraunt_url(@resteraunt), params: { resteraunt: { location: @resteraunt.location, name: @resteraunt.name, user_id: @resteraunt.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy resteraunt" do
    assert_difference('Resteraunt.count', -1) do
      delete resteraunt_url(@resteraunt), as: :json
    end

    assert_response 204
  end
end

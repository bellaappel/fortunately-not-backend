require 'test_helper'

class EightballsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eightball = eightballs(:one)
  end

  test "should get index" do
    get eightballs_url, as: :json
    assert_response :success
  end

  test "should create eightball" do
    assert_difference('Eightball.count') do
      post eightballs_url, params: { eightball: { ans1: @eightball.ans1, ans10: @eightball.ans10, ans11: @eightball.ans11, ans12: @eightball.ans12, ans13: @eightball.ans13, ans14: @eightball.ans14, ans15: @eightball.ans15, ans16: @eightball.ans16, ans17: @eightball.ans17, ans18: @eightball.ans18, ans19: @eightball.ans19, ans2: @eightball.ans2, ans20: @eightball.ans20, ans3: @eightball.ans3, ans4: @eightball.ans4, ans5: @eightball.ans5, ans6: @eightball.ans6, ans7: @eightball.ans7, ans8: @eightball.ans8, ans9: @eightball.ans9, name: @eightball.name } }, as: :json
    end

    assert_response 201
  end

  test "should show eightball" do
    get eightball_url(@eightball), as: :json
    assert_response :success
  end

  test "should update eightball" do
    patch eightball_url(@eightball), params: { eightball: { ans1: @eightball.ans1, ans10: @eightball.ans10, ans11: @eightball.ans11, ans12: @eightball.ans12, ans13: @eightball.ans13, ans14: @eightball.ans14, ans15: @eightball.ans15, ans16: @eightball.ans16, ans17: @eightball.ans17, ans18: @eightball.ans18, ans19: @eightball.ans19, ans2: @eightball.ans2, ans20: @eightball.ans20, ans3: @eightball.ans3, ans4: @eightball.ans4, ans5: @eightball.ans5, ans6: @eightball.ans6, ans7: @eightball.ans7, ans8: @eightball.ans8, ans9: @eightball.ans9, name: @eightball.name } }, as: :json
    assert_response 200
  end

  test "should destroy eightball" do
    assert_difference('Eightball.count', -1) do
      delete eightball_url(@eightball), as: :json
    end

    assert_response 204
  end
end

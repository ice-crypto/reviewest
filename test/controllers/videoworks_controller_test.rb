require 'test_helper'

class VideoworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @videowork = videoworks(:one)
  end

  test "should get index" do
    get videoworks_url
    assert_response :success
  end

  test "should get new" do
    get new_videowork_url
    assert_response :success
  end

  test "should create videowork" do
    assert_difference('Videowork.count') do
      post videoworks_url, params: { videowork: { casts: @videowork.casts, directors: @videowork.directors, screening_at: @videowork.screening_at, screening_on: @videowork.screening_on, screenplaies: @videowork.screenplaies, summary: @videowork.summary, title: @videowork.title } }
    end

    assert_redirected_to videowork_url(Videowork.last)
  end

  test "should show videowork" do
    get videowork_url(@videowork)
    assert_response :success
  end

  test "should get edit" do
    get edit_videowork_url(@videowork)
    assert_response :success
  end

  test "should update videowork" do
    patch videowork_url(@videowork), params: { videowork: { casts: @videowork.casts, directors: @videowork.directors, screening_at: @videowork.screening_at, screening_on: @videowork.screening_on, screenplaies: @videowork.screenplaies, summary: @videowork.summary, title: @videowork.title } }
    assert_redirected_to videowork_url(@videowork)
  end

  test "should destroy videowork" do
    assert_difference('Videowork.count', -1) do
      delete videowork_url(@videowork)
    end

    assert_redirected_to videoworks_url
  end
end

require "test_helper"

class RacketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @racket = rackets(:one)
  end

  test "should get index" do
    get rackets_url
    assert_response :success
  end

  test "should get new" do
    get new_racket_url
    assert_response :success
  end

  test "should create racket" do
    assert_difference("Racket.count") do
      post rackets_url, params: { racket: { title: @racket.title } }
    end

    assert_redirected_to racket_url(Racket.last)
  end

  test "should show racket" do
    get racket_url(@racket)
    assert_response :success
  end

  test "should get edit" do
    get edit_racket_url(@racket)
    assert_response :success
  end

  test "should update racket" do
    patch racket_url(@racket), params: { racket: { title: @racket.title } }
    assert_redirected_to racket_url(@racket)
  end

  test "should destroy racket" do
    assert_difference("Racket.count", -1) do
      delete racket_url(@racket)
    end

    assert_redirected_to rackets_url
  end
end
